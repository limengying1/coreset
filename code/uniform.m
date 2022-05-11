function [S,St,WW]=uniform(data,R,W)
   
   [~,~,n]=size(data);
   r=round(R*n);
   rand=randperm(n);
   index=rand(1:r);
   index=sort(index);
   S=data(:,:,index);
   St(1:r)=1/n;
   WW=W(:,index);
end