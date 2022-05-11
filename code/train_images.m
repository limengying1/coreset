clear    %首先读取4个数据，分别是MagicNumber=2051，NumberofImages=6000，rows=28，colums=28，然后每读取rows×colums个数表示一张图片进行保存。
clc     %共 60,000 幅（28*28）的图像数据（乱序排列）   测试集共 10,000 副（28*28）的图像数据
filename = './数据集/train-images.idx3-ubyte';
savename = './train_x';
FID = fopen(filename,'r');

MagicNumber=readint32(FID);
NumberofImages=readint32(FID);
rows=readint32(FID);
colums=readint32(FID);


savePath = [savename,'.mat'];
train_x = zeros(NumberofImages,rows*colums);
for i = 1:NumberofImages
            temp = fread(FID,(rows*colums), 'uchar');
            train_x(i,:) = temp';
end
save(savePath,'train_x')
