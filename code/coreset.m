function [S,St,WW]=coreset(data,R,W,alg)
   [m,d,n]=size(data);
   y=zeros(n,1);
   for i=1:n
       %disp(i);%
%        ddis=abs(distance1(data(:,:,i)',data(:,:,randi(n))'));%����X(:,:,i)��b��end����
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
   minisum=sum(y);  %���minisum==minsum
   a=2;
for i=1:n
    y(i)=8*(a+1)*y(i)/minisum+(4*a+16)/n;%���������ȸ���
    if(i>1)  
        y(i)=y(i)+y(i-1);%�����������
    end
end
for i=1:n
    y(i)=y(i)/y(n);%���������ȸ���  a=2
end
%disp(5);%
% r=round(R*n);
r=ceil(R*n);
S=zeros(m,d,r);
St=zeros(1,r);

for j=1:r  
    %disp(j);%%rΪҪѡ����coreset��С(5%��30%)  ѡ��SΪcoreset
    c=y(n)*rand(1);
    for i=1:n
    if c<y(1)
        for p=1:m
            for q=1:d
                S(p,q,j)=data(p,q,1);
                WW(:,j)=W(:,1);
                St(j)=y(1);  %St�Ǳ�ѡ��S��������
            end
        end
    elseif c<=y(i) && c>=y(i-1)
        for p=1:m
            for q=1:d
                S(p,q,j)=data(p,q,i);
                WW(:,j)=W(:,i);
                St(j)=y(i)-y(i-1);  %St�Ǳ�ѡ��S��������
            end
        end
    end 
    end
end
end
