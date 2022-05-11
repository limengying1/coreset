% synthetic data,Weather data
% clear ;
% clc;

% result of each trial:
% runningtime,new_Q,objective value
% total results:
% running time,final Q,objective value,iterations times
%% 
clear all
t0=cputime;
load('date_timeseries.mat');

data=P;
[k,d,n]=size(data);
delta=100;
new_Q=zeros(k,d,n);
R=0.1;  %coreset size
alg=1; % sinkhorn=1,  network=2;
corealg=1; %coreset=1;uniform sampling=2;
w=ones(k,n);
% W=zeros(k,n);
% Q=zeros(k,d,n);
% [W(:,1),Q(:,:,1)]=barycenter2(k,data,w,alg);

for i=1:n  %initialization
    W(:,i)=W(:,1);
    Q(:,:,i)=Q(:,:,1);
    % [W(:,i),Q(i,:,:)]=ensemble_prototype(k,data,w,alg,R);
end
% P=r(1:10,:,:);
% W=W(1:10,:);
% Q=Q(1:10,:,:)
% k=10;
% delta=4;
num=0;  %iteration times;
%while 1
    p=0;
    num=num+1;
    a=test(Q(:,:,2),Q(:,:,2),P(:,:,1),k,delta); %更新，权重，位置，调用cvx
    for i=1:10
        new_Q(i,1,1)=a.x(2*i-1);
        new_Q(i,2,1)=a.x(2*i);
    end
    
%     a=test(Q(:,:,n-1),Q(:,:,n-1),P(:,:,n),k,delta);
%     for i=1:10
%         new_Q(i,1,n)=a.x(2*i-1);
%         new_Q(i,2,n)=a.x(2*i);
%     end
%     
%     for j=2:n-1
%         a=test(Q(:,:,j-1),Q(:,:,j+1),P(:,:,j),k,delta) ;
%         for i=1:10
%             new_Q(i,1,j)=a.x(2*i-1);
%             new_Q(i,2,j)=a.x(2*i);
%         end
%     end
%     
%     for i=1:n
%         dis=abs(distance1(Q(:,:,i)',new_Q(:,:,i)'));%计算Q和new_Q的end距离
%         ddis=assignsum(dis);
%         if ddis<1
%             p=p+1;
%         end
%     end
    
    if p==n
        %break;
    else
        Q(:,:,1)=new_Q(:,:,1);
    end
    
%end
runningtime=cputime-t0;