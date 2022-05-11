function [getdata]=readint32(FID)    %将其转化为二进制，通过字符串拼接后再转化为十进制
    data = [];
    for i = 1:4
            f=fread(FID,1);
            data = strcat(data,num2str(dec2base(f,2,8)));
    end
    getdata = bin2dec(data);

end