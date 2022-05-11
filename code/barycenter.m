function [W_new1,new_center] = barycenter(kk,data1,W,alg,corealg,R)
[~,~,n]=size(data1);
if(corealg==1)
    [data,St,WW]=coreset(data1,R,W,alg);
else
    [data,St,WW]=uniformcoreset(data1,R,W);
end
% k=round(0.3*n);
% s=zeros(1,k);
% for x=1:k            
%     s(x)=randi(n,1);
%     while (x > 1 && ismember(s(x),s(1:x-1))==1)    % 为保证种子不重叠
%             s(x)=randi(n,1);
%     end        
% end
% data=data1(:,:,s);
% [~,~,ni]=size(data);
% St=ones(ni,1);

[m,d,ni]=size(data);
disp(ni);
minsum=Inf;
for l=1:3     %l次重复抽取选择距离和最小的一次     快
    %disp(1);
    e=randi(ni);
%     disp(e);
    b=data(:,:,e);  %随机选Pi0
    s=zeros(1,ni);
    sum1=0;
    for i=1:ni
        %disp(i);%
%         dis=abs(distance1(b',data(:,:,i)'));%计算X(:,:,i)到b的end距离
%         s(i)=assignsum(dis);
        
         WA=WW(:,e)';
         WB=WW(:,i)';
         if(alg==1)
              s(i)=Sinkhorn(b',data(:,:,i)',WA,WB);  %sinkhorn
         end
         if(alg==2)
              D=distance1(b',data(:,:,i)');    %network
              s(i)=maintest(D,WA/sum(WA),WB/sum(WB));
         end
    end
    for i=1:ni
       sum1=sum1+s(i)/St(i);%求随机Pi0到所有Pi的end距离之和
    end
    if(sum1<minsum)
        mini=e;
        minsum=sum1;  %记录最小的为center(;,;,a),距离为y,多次实验最小距离和为minsum
    end
end
%disp(mini);
center=data(:,:,mini);
% W_new=WW(:,mini);

while 1
p=0;
new_center=zeros(m,d);
W_new1=zeros(kk,1);
for i=1:ni
        dis=abs(distance1(data(:,:,i)',center(:,:)'));%计算X(:,:,i)到b的end距离   分配方案
        t=assignment1(dis);
        
%          WA=W(:,i)';
%          WB=W_new;
%          D=distance1(data(:,:,i)',center(:,:)');    %network
%          t=maintest(D,WA/sum(WA),WB/sum(WB));
%          t=Sinkhorn(data(:,:,i)',center(:,:)',WA,WB);  %sinkhorn
        
        for j=1:m
            new_center(t(j),:)=new_center(t(j),:)+data(j,:,i)/St(i);
            W_new1(t(j),1)=W_new1(t(j),1)+WW(j,i);
%             for x=1:m
%                if(t(x)==j)
%                  new_center(:,j)=new_center(:,j)+data(i,x);   %
%                end
%             end
        end  
end
new_center(:,:)=new_center(:,:)/(ni*n);
W_new1=W_new1/ni;
% W_new=W_new1;
for i=1:m
if norm(new_center(i,:)-center(i,:))<0.02
%     disp(norm(new_center(i,:)-center(i,:)));
             p=p+1;
end
end
% disp(p);
if p>0.95*m
     break;
else
     center=new_center;
end
end

end


