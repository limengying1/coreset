clc;
clear all;

disp(1);
model_class = 2;
dim = 100;
% 期望值
m =zeros(100);
n=ones(1,100);
l=0.5*ones(1,100); 
% 协方差阵
disp(2);
s(:,:,1)=diag(n);
s(:,:,2)=diag(l);
% s(:, :, 1) = [0.2, 0, 0;
%               0, 0.2, 0;
%               0, 0, 0.2];
% s(:, :, 2) = [0.5, 0, 0;
%               0, 0.5, 0;
%               0, 0, 0.5];
num =[1000,1000];
disp(3);
for j=1:1000    %k=means 1000次
    disp(j);
    data = generate_data_GMM(dim, model_class, m, s, num);% 提出每组数据
    %data1 = data((data(:,101) == 1), (1:100));
    %data2 = data((data(:,101) == 2), (1:100));
    data3=data(:,(1:100))';
    [res,record]=FunK_meanPolyD(data3,50);
    Record(:,:,j)=record;
end

%%%%从a1的disp(3);开始
disp(4);
center=Record;
t0=cputime;%%%
[k,d,n]=size(center);
y=zeros(1,n);
minsum=Inf;
mini=Inf;

for l=1:20     %l次重复抽取选择距离和最小的一次
    disp(l);%
    e=randi(n); 
    b=center(:,:,e);  %随机选Pi0
    t=zeros(1,n);
    sum=0;
    for i=1:n
        disp(i);%
       dis=abs(distance1(b',center(:,:,i)'));%计算X(:,:,i)到b的end距离
       t(i)=assignsum(dis);
    end
    for i=1:n
       sum=sum+t(i);%求随机Pi0到所有Pi的end距离之和
    end
    if(sum<minsum)
        mini=e;
        minsum=sum;  %记录最小的为center(;,;,a),距离为y,多次实验最小距离和为minsum
    end
end
disp(4);%
t1=cputime-t0;%%%
%%%%coreset计算
t2=cputime;%%%
Smin=randi(n);
for i=1:n
       disp(i);%
       ddis=abs(distance1(center(:,:,i)',center(:,:,Smin)'));%计算X(:,:,i)到b的end距离
       y(i)=assignsum(ddis);
end
sum1=0;
for i=1:n
     sum1=sum1+y(i);%求随机Pi0到所有Pi的end距离之和
end
a=2;
for i=1:n
    y(i)=8*(a+1)*y(i)/sum1+(4*a+16)/n;%计算灵敏度概率  a=2
end
for i=2:n
    y(i)=y(i)+y(i-1);%计算概率区间
end
for i=1:n
    y(i)=y(i)/y(n);%计算灵敏度概率  a=2
end
disp(5);%
r=0.05*n;
S=zeros(k,d,r);
St=zeros(1,r);
for j=1:r  
    disp(j);%%r为要选出的coreset大小(5%到30%)  选出S为coreset
    c=y(n)*rand(1);
    for i=1:n
    if c<y(1)
        for p=1:k
            for q=1:d
                S(p,q,j)=center(p,q,1);
                St(j)=y(1);  %St是被选入S的灵敏度
            end
        end
    end
    if c>y(1)
    if c<=y(i) && c>=y(i-1)
        for p=1:k
            for q=1:d
                S(p,q,j)=center(p,q,i);
                St(j)=y(i)-y(i-1);  %St是被选入S的灵敏度
            end
        end
    end  
    end
    end
end
disp(6);
Sy=zeros(1,r);
Ssum=0;
for l=1:r
    disp(l);%
    Sdis=abs(distance1(center(:,:,mini)',S(:,:,l)'));  %计算X(:,:,i)到b的end距离
    Sy(l)=assignsum(Sdis);  
end
for i=1:r
        Ssum=Ssum+Sy(i)/St(i);%求随机Pi0到所有Pi的end距离之和  
end
Ssum=Ssum/r;
t3=cputime-t2;%%%
errow=abs(minsum-Ssum)/minsum;
















% data1 = data((data(:,4) == 1), (1:3));
% data2 = data((data(:,4) == 2), (1:3));

% 绘图分析（以第二组数据为例）
% figure(1)
% plot(data1(:, 1), data1(:, 2), '.k');
% axis equal;
% figure(2)
% plot(data1(:, 2), data1(:, 3), '.k');
% axis equal;
% figure(3)
% plot(data1(:, 1), data1(:, 3), '.k');
% axis equal;
% figure(4)
% histogram2(data1(:, 1), data1(:, 2), 30, 'FaceColor','flat')