import torch.nn as nn
import torch.nn.functional as F
import torch
from torchvision import models


class ResNet(nn.Module):
    def __init__(self, base_model_name: str, pretrained=False,
                 num_classes=6):
        super().__init__()
        base_model = models.__getattribute__(base_model_name)(
            pretrained=pretrained)
        layers = list(base_model.children())[:-2]
        layers.append(nn.AdaptiveMaxPool2d(1))
        self.encoder = nn.Sequential(*layers)


        in_features = base_model.fc.in_features
        self.classifier = nn.Sequential(
            nn.Linear(in_features, 256), nn.ReLU(), nn.Dropout(p=0.2),
            nn.Linear(256, 256), nn.ReLU(), nn.Dropout(p=0.2),
            nn.Linear(256, num_classes))

        # for m in self.modules():
        #     if isinstance(m, nn.Conv2d):
        #         nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
        #     elif isinstance(m, (nn.BatchNorm2d, nn.GroupNorm)):
        #         nn.init.constant_(m.weight, 1)
        #         nn.init.constant_(m.bias, 0)

    def forward(self, x):
        batch_size = x.size(0)
        x = self.encoder(x)
        x = x.view(batch_size, -1)

        x = self.classifier(x)
        multiclass_proba = F.softmax(x, dim=1)
        multilabel_proba = torch.sigmoid(x)
        return {
            "logits": x,
            "multiclass_proba": multiclass_proba,
            "multilabel_proba": multilabel_proba
        }


def get_model(config: dict):
    model_config = config["model"]
    model_name = model_config["name"]
    model_params = model_config["params"]

    if "resnet" in model_name:
        model = ResNet(  # type: ignore
            base_model_name=model_name,
            pretrained=model_params["pretrained"],
            num_classes=model_params["n_classes"])
        return model
    else:
        raise NotImplementedError

def main():
    # blk=ResBlk(64,128,stride=4)
    # tmp=torch.randn(2,64,32,32)
    # out=blk(tmp)
    # print('block',out.shape)
    config = {"model":
                  {"name": "resnet50",
                   "params":
                       {"pretrained": True, "n_classes": 6}}}
    device = torch.device('cuda')
    x=torch.randn(1,3,60,400).to(device)
    model=get_model(config).to(device)
    out=model(x)
    print('resnet:',out.shape)

if __name__=="__main__":
    main()