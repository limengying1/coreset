%clear           %label���ݶ�ȡ�뱣����image���ƣ���������ֻ��MagicNumber=2049��NumberofImages=6000��Ȼ��ÿ�ж�ȡ�����ݷ�ΧΪ0~9�������temp+1��Ϊ1������Ϊ0���ɡ�
%clc             %ѵ�����ı�ǩ��Ϣ��ȡֵΪ 0-9����60,000*1      ���Լ��ı�ǩ��Ϣ��ȡֵΪ 0-9����10,000*1
filename = './���ݼ�/train-labels.idx1-ubyte'; 
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