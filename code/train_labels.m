%clear           %label数据读取与保存与image类似，区别在于只有MagicNumber=2049，NumberofImages=6000，然后每行读取的数据范围为0~9，因此令temp+1列为1，其余为0即可。
%clc             %训练集的标签信息（取值为 0-9），60,000*1      测试集的标签信息（取值为 0-9），10,000*1
filename = './数据集/train-labels.idx1-ubyte'; 
savename = './train_y';
FID = fopen(filename,'r');

MagicNumber=readint32(FID);
NumberofImages=readint32(FID);


savePath = [savename,'.mat'];
train_y = zeros(NumberofImages,10);
for i = 1:NumberofImages
            temp = fread(FID,1);
            train_y(i,temp+1) = 1;
end
save(savePath,'train_y')