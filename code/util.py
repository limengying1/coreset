from matplotlib import pyplot as plt
import numpy as np
import random
# import torch
import librosa
import os
from tqdm import tqdm

def plol_loss(Loss):
    plt.plot(Loss)
    plt.xlabel("epoch")
    plt.ylabel("Loss")
    plt.title("Loss over time")
    plt.show()

def plot_acc(Acc):
    plt.plot(Acc)
    plt.xlabel("epoch")
    plt.ylabel("Accuracy")
    plt.title("Accuracy over time")
    plt.show()

def plot_valid(Acc):
    plt.plot(Acc)
    plt.xlabel("epoch")
    plt.ylabel("Valid Loss")
    plt.title("Valid Loss over time")
    plt.show()



MOD_DATA_PATH = 'D:/毕业论文/代码/聚类/train/'
DATA_PATH = 'F:/婴儿啼哭/测试集/'

def get_labels(path=DATA_PATH):
    labels = os.listdir(path)
    print(labels)
    label_indices = np.arange(0, len(labels))
    return labels, label_indices


def wav2mfcc(file_path):
    # wave, sr = librosa.load(file_path, mono=True, sr=None)
    # mfcc = librosa.feature.mfcc(wave, sr=8000,n_mfcc=40)
    wave, sr = librosa.load(file_path, mono=True, sr=None)
    melspec = librosa.feature.melspectrogram(wave,sr=16000,  n_mels=72,fmax=16000)
    mfcc = librosa.amplitude_to_db(melspec).astype(np.float32)

    return mfcc

def save_data_to_array(path=MOD_DATA_PATH):
    labels, _ = get_labels(path)
    print(path)
    for label in labels:
        mfcc_vectors = []

        wavfiles = [path + label + '/' + wavfile for wavfile in os.listdir(path + '/' + label)]
        for wavfile in tqdm(wavfiles, "Saving vectors of label - '{}'".format(label)):
            mfcc = np.zeros((72, 400))
            mfcc_feat = wav2mfcc(wavfile)[:, :400]
            mfcc[:, :mfcc_feat.shape[1]] = mfcc_feat
            mfcc_vectors.append(mfcc)

        mfcc_vectors = np.stack(mfcc_vectors)

        floder=r'特征'
        if not os.path.exists(floder):
            os.mkdir(floder)
        np.save(floder+label + '.npy', mfcc_vectors)


DATA_TEST_PATH = 'test'


def save_data_to_array_test(path=DATA_TEST_PATH):
    mfcc_vectors = []

    wavfiles = [DATA_TEST_PATH + '/' + wavfile for wavfile in os.listdir(DATA_TEST_PATH)]
    for wavfile in tqdm(wavfiles, "Saving vectors of label - '{}'".format('test')):
        mfcc = np.zeros((72, 400))
        mfcc_feat = wav2mfcc(wavfile)[:, :400]
        mfcc[:, :mfcc_feat.shape[1]] = mfcc_feat
        mfcc_vectors.append(mfcc)

    mfcc_vectors = np.stack(mfcc_vectors)
    floder = 'input/'
    if not os.path.exists(floder):
        os.mkdir(floder)
    np.save(floder+'test_melspectrogram.npy', mfcc_vectors)


def get_train_test(floder1,split_ratio=0.8, random_state=42):
    labels, indices= get_labels(MOD_DATA_PATH)
    print(labels)

    X = np.load(floder1+labels[0] + '_stft.npy')
    y = np.zeros(X.shape[0])


    for i, label in enumerate(labels[1:]):
        x = np.load(floder1+label + '_stft.npy')
        X = np.vstack((X, x))
        y = np.append(y, np.full(x.shape[0], fill_value=(i + 1)))
    print(y.shape)

    return X, y



if __name__=="__main__":
    save_data_to_array()
    # save_data_to_array_test()
    pass


