clear    %���ȶ�ȡ4�����ݣ��ֱ���MagicNumber=2051��NumberofImages=6000��rows=28��colums=28��Ȼ��ÿ��ȡrows��colums������ʾһ��ͼƬ���б��档
clc     %�� 60,000 ����28*28����ͼ�����ݣ��������У�   ���Լ��� 10,000 ����28*28����ͼ������
filename = './���ݼ�/train-images.idx3-ubyte';
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
