% for i=1:10
% disp(i);
% [Wn(:,i),picn(:,:,i)]=ensemble_prototype2(40,data(:,:,((i-1)*1100+1):(i*1100)),W(:,((i-1)*1100+1):(i*1100)),1);
% end
% [Wn(:,2),picn(:,:,2)]=ensemble_prototype2(data(:,:,501:1000),W(:,501:1000));
% [Wn(:,3),picn(:,:,3)]=ensemble_prototype2(data(:,:,1001:1500),W(:,1001:1500));
% [Wn(:,4),picn(:,:,4)]=ensemble_prototype2(data(:,:,1501:2000),W(:,1501:2000));
% [Wn(:,5),picn(:,:,5)]=ensemble_prototype2(data(:,:,2001:2500),W(:,2001:2500));
% [Wn(:,6),picn(:,:,6)]=ensemble_prototype2(data(:,:,1:500),W(:,1:500));
% [Wn(:,7),picn(:,:,7)]=ensemble_prototype2(data(:,:,501:1000),W(:,501:1000));
% [Wn(:,8),picn(:,:,8)]=ensemble_prototype2(data(:,:,1001:1500),W(:,1001:1500));
% [Wn(:,9),picn(:,:,9)]=ensemble_prototype2(data(:,:,1501:2000),W(:,1501:2000));
% [Wn(:,10),picn(:,:,10)]=ensemble_prototype2(data(:,:,2001:2500),W(:,2001:2500));
% save('USPSsinkhorn_shibie.mat','Wn','picn');

%%%%识别

% Num=100;
% num=1;
% N=[1,2,3,4,5];
% [k1,k]=size(N);
% m=784;
% train_x1=zeros(Num*k,m+1);% train_x2=zeros(Num,m+1); % train_x3=zeros(Num,m+1);
% while num<=k
%   l=(num-1)*Num+1;
%   for i=30000:60000           
%     if train_y(i,N(num))==1
%         disp(train_y(i,:));
%         train_x1(l,1:m)=train_x(i,:);
%         train_x1(l,m+1)=N(num);
%         l=l+1;
%         if l>num*Num
%             break;
%         end
%     end
%   end
% num=num+1;
% end
% % % l=1;   % for i=1:60000           %     if train_y(i,1)==1%         train_x1(l,1:m)=train_x(i,:);%         train_x1(l,m+1)=1;%         l=l+1;%         if l>Num%             break;%         end%     end% end
% % % l=1; % for j=1:60000%     if train_y(j,2)==1%         train_x2(l,1:m)=train_x(j,:);%         train_x2(l,m+1)=2;%         l=l+1;%         if  l>Num%             break;%         end%     end% end
% % % l=1;% for j=1:60000%     if train_y(j,3)==1%         train_x3(l,1:m)=train_x(j,:);%         train_x3(l,m+1)=2;%         l=l+1;%         if  l>Num%            break;%         end%     end% end
% % %pattern1=[train_x1;train_x2;train_x3];   %train_x1=[train_x1;train_x2];
% X1=train_x1(:,1:m);
% X2=zeros(28,28,Num*k);
% data_shibie=zeros(60,2,Num*k);
% W_shibie=zeros(60,Num*k);
% for i=1:Num*k
%     disp(i);
%     X2(:,:,i)=reshape(X1(i,:),28,28); 
%     [x,y]= find(X2(:,:,i));
%     data1=zeros(size(x,1),2);     %换成size(x,1);
%     w=zeros(1,size(x,1));
%     for j=1:size(x,1)
%        data1(j,1)=x(j,1);
%        data1(j,2)=y(j,1);
%        w(j)=X2(data1(j,1),data1(j,2),i);
%     end 
%     %权重聚类   for j=1:m   w(i)=X2(data1(j,1),data(j,2));  end
%     [y,IDX,sumDist]=mykmeans(data1(:,:),w,60);   
%     for l=1:60
%         W_shibie(l,i)=sum(w(IDX==l));
%     end
%     data_shibie(:,:,i)=y;
%     
%     m=find(data_shibie(:,1,i)==0);    %除去零点，补充为任意点
%     ind= randperm(size(x,1));
%     b =data1(ind(1:size(m)),:);
%     data_shibie(m,:,i)=b;
%     
%     data_shibie(:,1,i)=data_shibie(:,1,i)-min(data_shibie(:,1,i));  %平移位置
%     data_shibie(:,2,i)=data_shibie(:,2,i)-min(data_shibie(:,2,i));
%     %data(:,:,i)=Kmeans(data1(:,:));   %n=3000,k=60,d=2
% end

% clear tem;
% k1=5;
% for x=1:100     
%     for y=1:k1
% 
         WA=W(:,2004)';
         
       WB=W(:,2005)';
%          WB=Wn(:,y)';
         D=distance1(data(:,:,2004)',data(:,:,2005)');    %network
         distance=maintest(D,WA/sum(WA),WB/sum(WB));
% %          distance(y)=Sinkhorn(data_shibie(:,:,x)',pics(:,:,y)',WA,WB);  %sinkhorn
% 
% %        dis=abs(distance1(data(:,:,x)',pic(:,:,y)'));% 计算X(:,:,i)到b的匈牙利距离   
% %        distance(y)=assignsum(dis);           %distence(y)=norm(data(x,:)-center(y,:));%计算到每个类的距离 
%     end
%     [dd(x), tem(x-0)]=min(distance);%求最小的距离     %标记分类
% %     disp(tem(x));
% end
% a=find(tem(:)==y);
%     len=size(a,1);

% time=0;
% clear dis;
% k1=10;
% time=time+1;
% for x=1:k1    
%      for y=1:k1
%          WA=WW(:,y)';
% %          WB=Ws(:,x)';
%          WC=Wn(:,x)';
%           dis(x,y)=Sinkhorn(center(:,:,y)',picn(:,:,x)',WA,WC);
% %          D=distance1(center(:,:,y)',picn(:,:,x)');    %network
% %          din(x,y)=maintest(D,WA/sum(WA),WC/sum(WC));
%      end
% end
% % DDs=assignsum(dis);
% DDn(12,time)=assignsum(dis);

%minist coreset
%0.1 =[]

% center=zeros(20,2);
% data=zeros(30,2,20000);
% center(1,:)=randi([100 300],1,2);
% for x=2:20
%     disp(x);
%     center(x,:)=randi([100 250],1,2);
%     for z=1:x-1
%                distance(z)=min(abs(center(x,1)-center(z,1)),abs(center(x,2)-center(z,2)));
% 
%     end                 
%     while (x > 1 && min(distance(1:z))<6)  % ????????????
%         center(x,:)=randi([100 250],1,2);
%         for z=1:x-1
%                distance(z)=min(abs(center(x,1)-center(z,1)),abs(center(x,2)-center(z,2)));
% 
%         end
%     end
% end
% 
% for i=1:10
%     disp(i);
%      [X,Y]=DrawPoint(center(i,1),center1(i,2),2,50);
%      for j=1:50
%          [x,y]=DrawPoint(X(1,j),Y(1,j),1,30);
%          data(:,1,(i-1)*50+j)=x;
%          data(:,2,(i-1)*50+j)=y;
%      end
% end
  
% train_x1=train_x1(1:20000,1);
% for i=1:10
%     train_x1(20000+(i-1)*50+1:20000+(i-1)*50+50,1)=i+20;
% end
% 
% W=zeros(30,20500);
% W(:,:)=1/30;