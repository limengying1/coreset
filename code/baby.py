import librosa
import os
import numpy as np
from tqdm import tqdm
from keras.utils import to_categorical
from sklearn.model_selection import KFold,StratifiedKFold
import pandas as pd
import torch
from torch import nn
from torch.nn import functional as F
from  torch import nn,optim
import torch.utils.data as Data
import random
import ResNet.ResNet_bird2 as Bird1
import utils


# import torch
# torch.cuda.set_device(0)

def set_seed(seed=0):
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)  # 为CPU设置随机种子
    torch.cuda.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)  # 为所有GPU设置随机种子
    torch.backends.cudnn.deterministic = True  #
    torch.backends.cudnn.benchmark = False
    # torch.deterministic = True
    # torch.benchmark = False

set_seed()

def train(X,Y,path):

    # device = torch.device('cuda')
    # criteon = nn.BCEWithLogitsLoss()
    criteon=nn.CrossEntropyLoss()
    skf = StratifiedKFold(n_splits=5)
    epochs =100
    batch_size =64
    Loss = np.zeros(epochs*5)
    Acc = np.zeros(epochs*5)
    Valid=np.zeros(epochs*5)
    # patience=10
    # early_stopping = EarlyStopping(patience, verbose=True)
    if not os.path.exists(path):
        os.mkdir(path)
    config = {"model":
                  {"name": "resnet18",
                   "params":
                       {"pretrained": True, "n_classes": 6}}}
    for idx, (tr_idx, val_idx) in enumerate(skf.split(X, Y)):
        Min_Loss = 100
        Min_Valid=100
        Min_Acc=0
        model = Bird1.get_model(config)
        # model = model.to(device)
        optimizer = optim.Adam(model.parameters(), lr=1e-3)
        t_max=epochs
        scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=t_max, eta_min=0, last_epoch=-1)
        print(idx)
        X_train, X_test = X[tr_idx], X[val_idx]
        y_train, y_test = Y[tr_idx], Y[val_idx]
        Train_size=X_train.size(0)
        Test_size=X_test.size(0)
        Cry_dataset_train=Data.TensorDataset(X_train,y_train)
        Cry_train=Data.DataLoader(dataset=Cry_dataset_train,
                            batch_size=batch_size,
                            shuffle=True)
        Cry_dataset_test=Data.TensorDataset(X_test,y_test)
        Cry_test=Data.DataLoader(dataset=Cry_dataset_test,
                            batch_size=batch_size,
                            shuffle=True)


        for epoch in range(epochs):
            Loss_Mean = 0
            valid_losses = 0
            model.train()
            for batchidx, (x, label) in enumerate(Cry_train):
                # x, label = x.to(device), label.to(device)
                # logits:[b,10],label:[b]
                logits = model(x)
                loss = criteon(logits["logits"], label)

                optimizer.zero_grad()
                loss.backward()
                optimizer.step()
                Loss_Mean+=loss.item()*x.size(0)

            Loss_Mean=Loss_Mean/Train_size
            print(epoch, "loss:",Loss_Mean)

            Loss[idx*epochs+epoch]=Loss_Mean
            if Loss_Mean<=Min_Loss:
                Min_Loss = Loss_Mean
                torch.save(model, path+"{}.pt".format(idx))

            model.eval()
            with torch.no_grad():
                total_correct = 0
                total_num = 0
                for x, label in Cry_test:
                    # x, label = x.to(device), label.to(device)
                    # [b,10]
                    logits = model(x)
                    ValidLoss=criteon(logits["logits"],label)
                    valid_losses+=ValidLoss.item()*x.size(0)
                    # [b]
                    pred = logits["multiclass_proba"].argmax(dim=1)
                    # [b] vs [b] =>scalar tensor
                    total_correct += torch.eq(pred, label).float().sum()
                    total_num += x.size(0)
                valid_losses=valid_losses/Test_size
                if valid_losses <= Min_Valid:
                    Min_Valid = valid_losses
                    torch.save(model, path + "{}_Valid.pt".format(idx))
                acc = total_correct / total_num
                print(epoch, "valid_losses: ", valid_losses, "   acc: ",acc)
                if acc>=Min_Acc:
                    Min_Acc=acc
                    torch.save(model, path + "{}_Acc.pt".format(idx))

            Acc[idx*epochs+epoch]=acc
            Valid[idx*epochs+epoch]=valid_losses
        #     early_stopping(valid_losses, model)
        #     if early_stopping.early_stop:
        #         print("Early stopping")
        #         break
        # model.load_state_dict(torch.load('checkpoint.pt'))
        # torch.save(model, path + "{}.pt".format(idx))
    utils.plol_loss(Loss)
    utils.plot_acc(Acc)
    utils.plot_valid(Valid)


def test(X_test, path, path2):

    test_pred = np.zeros((228, 6))
    print(test_pred.shape)
    # device = torch.device('cuda')
    X_test=torch.from_numpy(X_test).float()
    Cry_dataset_test = Data.TensorDataset(X_test,torch.zeros(228,1))
    Cry_test = Data.DataLoader(dataset=Cry_dataset_test,
                               batch_size=64,
                               shuffle=False)
    for batchidx, (x,label) in enumerate(Cry_test):
        # x = x.to(device)
        with torch.no_grad():
            pred=np.zeros((x.size(0),6))
            for idx in range(5):
                model = torch.load(path + "{}.pt".format(idx))
                # model = model.to(device)
                model.eval()
                pred += model(x)["multiclass_proba"].cpu().numpy()
        test_pred[batchidx*16:batchidx*16+pred.shape[0],:]=pred
        df = pd.DataFrame()

        df['id'] = [wavfile for wavfile in os.listdir('test/')]
        df['label'] = [['awake', 'diaper', 'hug', 'hungry', 'sleepy', 'uncomfortable'][x] for x in test_pred.argmax(1)]
        df.to_csv(path2, index=None)



def mono_to_color(X: np.ndarray,
                  mean=None,
                  std=None,
                  norm_max=None,
                  norm_min=None,
                  eps=1e-6):
    # Stack X as [X,X,X]
    X = np.stack([X, X, X], axis=-1)

    # Standardize
    mean = mean or X.mean()
    X = X - mean
    std = std or X.std()
    Xstd = X / (std + eps)
    _min, _max = Xstd.min(), Xstd.max()
    norm_max = norm_max or _max
    norm_min = norm_min or _min
    if (_max - _min) > eps:
        # Normalize to [0, 255]
        V = Xstd
        V[V < norm_min] = norm_min
        V[V > norm_max] = norm_max
        V = (V - norm_min) / (norm_max - norm_min)
        V = V.astype(np.float)
    else:
        # Just zero
        V = np.zeros_like(Xstd, dtype=np.float)
    V=np.moveaxis(V,3,1)
    return V,mean,std,norm_max,norm_min



if __name__=="__main__":



    ## pt path

    path = 'pytorch_pt/ResNet18_stft_5predict_bs64_epoch100/'
    path2='result/ResNet18_stft_5predict_bs64_epoch100.csv'
    #
    X, Y = utils.get_train_test('input/train_stft/')
    X,mean,std,norm_max,norm_min=mono_to_color(X)
    X=torch.from_numpy(X).float()
    Y=torch.from_numpy(Y).long()

    train(X, Y, path)

    floder = 'input/'
    X_test=np.load(floder+'test_stft.npy')
    X_test,_,_,_,_=mono_to_color(X_test,mean,std,norm_max,norm_min)
    test(X_test,path,path2)
