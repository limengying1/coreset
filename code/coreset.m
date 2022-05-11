function [S,St,WW]=coreset(data,R,W,alg)
   [m,d,n]=size(data);
   y=zeros(n,1);
   for i=1:n
       %disp(i);%
%        ddis=abs(distance1(data(:,:,i)',data(:,:,randi(n))'));%计算X(:,:,i)到b的end距离
%        y(i)=assignsum(ddis);
       
       WA=W(:,i)';
       WB=W(:,randi(n))';
       if(alg==1)
           y(i)=Sinkhorn(data(:,:,i)',data(:,:,randi(n))',WA,WB);  %sinkhorn
       end
       if(alg==2)
            D=distance1(data(:,:,i)',data(:,:,randi(n))');    %network
            y(i)=maintest(D,WA/sum(WA),WB/sum(WB));
       end  
   end
   minisum=sum(y);  %检测minisum==minsum
   a=2;
for i=1:n
    y(i)=8*(a+1)*y(i)/minisum+(4*a+16)/n;%计算灵敏度概率
    if(i>1)  
        y(i)=y(i)+y(i-1);%计算概率区间
    end
end
for i=1:n
    y(i)=y(i)/y(n);%计算灵敏度概率  a=2
end
%disp(5);%
% r=round(R*n);
r=ceil(R*n);
S=zeros(m,d,r);
St=zeros(1,r);

for j=1:r  
    %disp(j);%%r为要选出的coreset大小(5%到30%)  选出S为coreset
    c=y(n)*rand(1);
    for i=1:n
    if c<y(1)
        for p=1:m
            for q=1:d
                S(p,q,j)=data(p,q,1);
                WW(:,j)=W(:,1);
                St(j)=y(1);  %St是被选入S的灵敏度
            end
        end
    elseif c<=y(i) && c>=y(i-1)
        for p=1:m
            for q=1:d
                S(p,q,j)=data(p,q,i);
                WW(:,j)=W(:,i);
                St(j)=y(i)-y(i-1);  %St是被选入S的灵敏度
            end
        end
    end 
    end
end
end
