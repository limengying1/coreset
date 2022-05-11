function [W_new1,new_center] = barycenter2(kk,data,WW,alg)
[m,d,ni]=size(data);
minsum=Inf;
for l=1:3     %l���ظ���ȡѡ��������С��һ��
    e=randi(ni);
    b=data(:,:,e);  %���ѡPi0
    s=zeros(1,ni);
    sum1=0;
    for i=1:ni
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
        sum1=sum1+s(i);%�����Pi0������Pi��end����֮��
    end
    if(sum1<minsum)
        mini=e;
        minsum=sum1;  %��¼��С��Ϊcenter(;,;,a),����Ϊy,���ʵ����С�����Ϊminsum
    end
end
center=data(:,:,mini);
while 1
    disp(11);
    p=0;
    new_center=zeros(m,d);
    W_new1=zeros(kk,1);
    for i=1:ni
        dis=abs(distance1(data(:,:,i)',center(:,:)'));%����X(:,:,i)��b��end����
        t=assignment1(dis);
        for j=1:m
            new_center(t(j),:)=new_center(t(j),:)+data(j,:,i);
            %W_new1(t(j),1)=W_new1(t(j),1)+WW(j,i);
        end
    end
    new_center(:,:)=new_center(:,:)/ni;
    W_new1=W_new1/ni;
    for i=1:m
        if norm(new_center(i,:)-center(i,:))<0.02
             p=p+1;
        end
    end
disp(p);
if p>0.5*m
     break;
else
     center=new_center;
end
end
disp(W_new1);
disp(new_center);
end


