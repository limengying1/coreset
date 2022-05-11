clear dif;
clear ddis;
clear dddis;
clear dd;
t0=cputime;
Num=1000;
num=1;
N=[1,2,3];
[k1,k]=size(N);
m=784;
train_x1=zeros(Num*k,m+1);% train_x2=zeros(Num,m+1); % train_x3=zeros(Num,m+1);
while num<=k
  l=(num-1)*Num+1;
  for i=1:60000           
    if train_y(i,N(num))==1
        disp(train_y(i,:));
        train_x1(l,1:m)=train_x(i,:);
        train_x1(l,m+1)=N(num);
        l=l+1;
        if l>num*Num
            break;
        end
    end
  end
num=num+1;
end
% % l=1;   % for i=1:60000           %     if train_y(i,1)==1%         train_x1(l,1:m)=train_x(i,:);%         train_x1(l,m+1)=1;%         l=l+1;%         if l>Num%             break;%         end%     end% end
% % l=1; % for j=1:60000%     if train_y(j,2)==1%         train_x2(l,1:m)=train_x(j,:);%         train_x2(l,m+1)=2;%         l=l+1;%         if  l>Num%             break;%         end%     end% end
% % l=1;% for j=1:60000%     if train_y(j,3)==1%         train_x3(l,1:m)=train_x(j,:);%         train_x3(l,m+1)=2;%         l=l+1;%         if  l>Num%            break;%         end%     end% end
% %pattern1=[train_x1;train_x2;train_x3];   %train_x1=[train_x1;train_x2];
X1=train_x1(:,1:m);
X2=zeros(28,28,Num*k);
data=zeros(60,2,Num*k);
for i=1:Num*k
    disp(i);
    X2(:,:,i)=reshape(X1(i,:),28,28); 
    [x,y]= find(X2(:,:,i));
    data1=zeros(size(x,1),2);     %换成size(x,1);
    w=zeros(1,size(x,1));
    for j=1:size(x,1)
       data1(j,1)=x(j,1);
       data1(j,2)=y(j,1);
       w(j)=X2(data1(j,1),data1(j,2),i);
    end 
    %权重聚类   for j=1:m   w(i)=X2(data1(j,1),data(j,2));  end
    [y,IDX,sumDist]=mykmeans(data1(:,:),w,60);   
    data(:,:,i)=y;
    
    m=find(data(:,1,i)==0);    %除去零点，补充为任意点
    ind= randperm(size(x,1));
    b =data1(ind(1:size(m)),:);
    data(m,:,i)=b;
    
    data(:,1,i)=data(:,1,i)-min(data(:,1,i));  %平移位置
    data(:,2,i)=data(:,2,i)-min(data(:,2,i));
    %data(:,:,i)=Kmeans(data1(:,:));   %n=3000,k=60,d=2
end
t2=cputime-t0;
% k=4;
% data(:,:,1)=[1,1;2,2;3,3;4,4];data(:,:,2)=[1,2;2,1;3,4;4,3];data(:,:,3)=[2,2;1,1;3,2;4,4];pattern1(1:3,785)=1; 
% data(:,:,4)=[10,10;20,20;30,30;40,40];data(:,:,5)=[10,20;20,10;30,40;40,30];data(:,:,6)=[20,20;10,10;30,20;40,40];pattern1(4:6,785)=2; 
% data(:,:,7)=[100,100;200,200;300,300;400,400];data(:,:,8)=[100,200;200,100;300,400;400,300];data(:,:,9)=[200,200;100,100;300,200;400,400];pattern1(7:9,785)=3; 
% data(:,:,10)=[60,60;70,70;80,80;90,90];data(:,:,11)=[60,70;70,60;80,90;90,80];data(:,:,12)=[70,70;60,60;80,70;90,90];pattern1(10:11,785)=2; 
[m,d,n]=size(data);

s=zeros(1,k);
for x=1:k            
    s(x)=randi(n,1);
    while (x > 1 && ismember(s(x),s(1:x-1))==1)    % 为保证种子不重叠
            s(x)=randi(n,1);
    end        
end
disp(s);
s=sort(s);
disp(s);
center=data(:,:,s);%第一次随机产生聚类中心,初始化
distance=zeros(1,k);
new_center=zeros(m,d,k);
t3=cputime-t2;
times=0;
ee=0;
temp=zeros(1,n);

diff_emd=zeros(k,1);
sum_emd=zeros(k,1);

WA=ones(1,1);
WB=ones(1,1);
while 1
times=times+1;
%Center(:,:,:,times)=center;
t4=cputime;
ptemp=temp;
dddis(times)=0;
for x=1:n     
%     disp(x);
    for y=1:k
%        disp(y);
       dis=abs(distance1(data(:,:,x)',center(:,:,y)'));% 计算X(:,:,i)到b的匈牙利距离   
       distance(y)=assignsum(dis);           %distence(y)=norm(data(x,:)-center(y,:));%计算到每个类的距离 
       
%         distance(y)=fast_emd(data(:,:,x),center(:,:,y));  %fastemd

%        D=abs(distance1(data(:,:,x)',center(:,:,y)'));    %network
%        distance(y)=maintest(D,WA/sum(WA),WB/sum(WB));
    end
    [dd(x), temp(x)]=min(distance);%求最小的距离     %标记分类
    dddis(times)=dddis(times)+dd(x);
%     pattern(1,x)=temp(x); %     if temp(x)==pattern1(x,785)%         num=num+1;%     else%         disp(x);%     end      
end
[ddd,dddd]=sort(dd);          %kmeans--
l=ddd(0.9*Num*k);
% disp(temp);
diff=find((ptemp-temp)~=0);%分类变化
[~,dif(times)]=size(diff);
disp(dif(times));
% if(ptemp==temp) 
%     ee=ee+1;
% else
%     ee=0;
% end

t5=cputime;
T1=t5-t4;  %assignment k clusters time
accu=zeros(k,1);
p=0;
ddis(times)=0;
for y=1:k
    disp(y);
    a=find((temp(:)==y)&(dd(:)<l));
    len=size(a,1);
    new_data=data(:,:,a);   %划分成k个类
    nnum=train_x1(a,785);
    disp(len);
    accu(y)=sum(nnum==mode(nnum));
    disp(accu(y)/len);
% i=0;%  for x=1:n  % if temp(x)==y  %   i=i+1;% new_data(:,:,i)=data(:,:,x);%  num(i)=pattern1(x,785);%  end%  end%   disp(i);% disp(sum(num(1:i)==mode(num(1:i)))/i);
%     disp(2);
%     new_center(:,:,y)=ensemble_prototype2(new_data);%求新的prototype
% t7=cputime;
% if(dif(times)/(Num*k)<=0.1)
%     new_center(:,:,y)=ensemble_prototype2(new_data);%求新的prototype
%     T3=cputime-t7;
% % else
    new_center(:,:,y)=ensemble_prototype(new_data);
%     T4=cputime-t7;
% end    
    for i=1:len
        t=abs(distance1(new_center(:,:,y)',new_data(:,:,i)'));%匈牙利计算X(:,:,i)到b的end距离
        distance(y)=assignsum(t);   
%         D=abs(distance1(new_center(:,:,y)',new_data(:,:,i)'));    %network
%         distance(y)=maintest(D,WA/sum(WA),WB/sum(WB));      
        ddis(times)=ddis(times)+distance(y);
%         dis=dis+fast_emd(new_center(:,:,y)',new_data(:,:,i)');   %fast_emd
    end
    diff_emd(y)=abs(ddis(times)-sum_emd(y))/(sum_emd(y)+0.01);
    disp(diff_emd(y));
    sum_emd(y)=ddis(times);
%     disp(sum_emd(y));

%     disp(3);
%     dis=abs(distance1(new_center(:,:,y)',center(:,:,y)'));%计算X(:,:,i)到b的end距离   慢,有没有转置的问题，应该没有
%     t=assignsum(dis);

%     t=fast_emd(new_center(:,:,y)',center(:,:,y)');
%     disp(t);
    if diff_emd(y)<=0.001   %     if t<0.01  
        p=p+1;
    end
    
%     disp(norm(new_center(:,:,y)-center(:,:,y)));
%     if norm(new_center(:,:,y)-center(:,:,y))<1
%         p=p+1;
%     end
%     sum=0;%     for j=1:m%     sum=sum+norm(abs(new_center(j,:,y)-center(j,:,y))./center(j,:,y));%     end%     disp(sum./m);%     if (sum./m)<0.1%         %disp(max(abs(new_center(j,:,y)-center(j,:,y))./center(j,:,y)));%        p=p+1;%     end
end
disp(p);
if(p==k||dif(times)/(Num*k)<=0.03) %if(p==k)
    disp(sum(accu)/(Num*k));
    break;
else                                                                                                                                                                                                                                                                                                                                                                                                    
    center=new_center;
end
t6=cputime;
T2=t6-t5;  %prototype k times 
end
t1=cputime-t0;%total time