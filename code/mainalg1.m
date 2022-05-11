% synthetic data, cifar-10, minist

% clear;
% clc;

% result of each trial: 									
% running time, objective value, iteration times£¨current k barycenters,
% total results: 
% running time, objective value, iteration times£¨final k barycenters,
%%
%load('data_synthetic30.mat')
load('data_minist.mat');
%load('data_cifar.mat');%load('data_baby.mat');

% clear dif;
% clear ddis;
% clear dddis;
% clear dd;
t0=cputime;
Num=100;
R=0.1;  %coreset??ß≥
alg=1; % sinkhorn=1,  network=2;
corealg=1; %coreset=1;uniform sampling=2;
kmeansalg=2;  %kmeans=1;kmeans++=2;kmeans--=3;
k=5;  %???k??
kk=60;
% num=1;
% N=[6,7,8,9,10];
% % [~,~,NUM]=size(data);
% [~,k1]=size(N);
 mm=784;
% train_x1=zeros(Num*k1,mm+1);% train_x2=zeros(Num,m+1); % train_x3=zeros(Num,m+1);
% while num<=k1
%   l=(num-1)*Num+1;
%   for i=1:60000           
%     if train_y(i,N(num))==1
%         disp(train_y(i,:));
%         train_x1(l,1:mm)=train_x(i,:);
%         train_x1(l,mm+1)=N(num);
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
% X1=train_x1(:,1:mm);
% X2=zeros(28,28,Num*k1);
% data=zeros(60,2,Num*k1);
% W=zeros(60,Num*k1);
% for i=1:Num*k1
%     disp(i);
%     X2(:,:,i)=reshape(X1(i,:),28,28); 
%     [x,y]= find(X2(:,:,i));
%     data1=zeros(size(x,1),2);     %????size(x,1);
%     w=zeros(1,size(x,1));
%     for j=1:size(x,1)
%        data1(j,1)=x(j,1);
%        data1(j,2)=y(j,1);
%        w(j)=X2(data1(j,1),data1(j,2),i);
%     end 
%     %??????   for j=1:m   w(i)=X2(data1(j,1),data(j,2));  end
%     [y,IDX,sumDist]=mykmeans(data1(:,:),w,60);   
%     for l=1:60
%         W(l,i)=sum(w(IDX==l));
%     end
%     data(:,:,i)=y;
%     
%     m=find(data(:,1,i)==0);    %????????????????
%     ind= randperm(size(x,1));
%     b =data1(ind(1:size(m)),:);
%     data(m,:,i)=b;
%     
%     data(:,1,i)=data(:,1,i)-min(data(:,1,i));  %???¶À??
%     data(:,2,i)=data(:,2,i)-min(data(:,2,i));
%     %data(:,:,i)=Kmeans(data1(:,:));   %n=3000,k=60,d=2
% end
for lun=1:10
    t0=cputime;
    [m,d,n]=size(data);
    s=zeros(1,k);
    if(kmeansalg==1||kmeansalg==3)
        for x=1:k
            s(x)=randi(n,1);
            while (x > 1 && ismember(s(x),s(1:x-1))==1)    % ????????????
                s(x)=randi(n,1);
            end
        end
    else
        s(1)=randi(n,1);
        distances=zeros(1,n);%kmeans++
        for x=2:k
            for y=1:n
                distance=zeros(1,x-1);
                for z=1:x-1
%                     dis=abs(distance1(data(:,:,y)',data(:,:,s(z))'));% ????X(:,:,i)??b????????????
%                     distance(z)=assignsum(dis);
                    WA=W(:,y)';
                    WB=W(:,s(z))';
                    if(alg==1)
                       distance(z)=Sinkhorn(data(:,:,y)',data(:,:,s(z))',WA,WB); %sinkhorn
                    end
                    if(alg==2)
                       D=distance1(data(:,:,y)',data(:,:,s(z))');    %network
                       distance(z)=maintest(D,WA/sum(WA),WB/sum(WB));
                    end
                    
                end
                distances(y)=min(distance);
            end
            [~,s(x)]=max(distances);
        end
    end
    disp(s);
    s=sort(s);
    disp(s);
    center=data(:,:,s);
    WW=W(:,s);
    distance=zeros(1,k);
    new_center=zeros(m,d,k);
    
    times=0;
    ee=0;
    temp=zeros(1,n);
    
    sum_emd=0;
    
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
                %        dis=abs(distance1(center(:,:,y)',data(:,:,x)'));% ????X(:,:,i)??b????????????
                %        distance(y)=assignsum(dis);           %distence(y)=norm(data(x,:)-center(y,:));%?????????????
                %
                %         distance(y)=fast_emd(center(:,:,y),data(:,:,x));  %fastemd
                
                WA=WW(:,y)';
                WB=W(:,x)';
                if(alg==1)
                    distance(y)=Sinkhorn(center(:,:,y)',data(:,:,x)',WA,WB); %sinkhorn
                end
                if(alg==2)
                    D=distance1(center(:,:,y)',data(:,:,x)');    %network
                    distance(y)=maintest(D,WA/sum(WA),WB/sum(WB));
                end
                
            end
            [dd(x), temp(x)]=min(distance);%????ß≥?????     %??????
            dddis(times)=dddis(times)+dd(x);
            %     pattern(1,x)=temp(x); %     if temp(x)==pattern1(x,785)%         num=num+1;%     else%         disp(x);%     end
        end
        % disp(temp);
        diff_emd(times)=abs(dddis(times)-sum_emd)/(sum_emd+0.01);
        disp(diff_emd(times));
        sum_emd=dddis(times);
        
        diff=find((ptemp-temp)~=0);%????Å£
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
        [ddd,dddd]=sort(dd);
        l=ddd(0.9*n);
        for y=1:k
            disp(y);
            if(kmeansalg==3)
                a=find((temp(:)==y)&(dd(:)<l));
            else
                a=find(temp(:)==y);
            end
            len=size(a,1);
            new_data=data(:,:,a);   %?????k????
            W_new=W(:,a);
            %     WW(:,y)=sum(W_new,2)/len;
            nnum=train_x1(a,mm+1);
            disp(len);
            accu(y)=sum(nnum==mode(nnum));
            disp(accu(y)/len);
            % i=0;%  for x=1:n  % if temp(x)==y  %   i=i+1;% new_data(:,:,i)=data(:,:,x);%  num(i)=pattern1(x,785);%  end%  end%   disp(i);% disp(sum(num(1:i)==mode(num(1:i)))/i);
            %     disp(2);
            if(R==0)
                [WW(:,y),new_center(:,:,y)]=barycenter2(kk,new_data,W_new,alg);
            else
%                 t7=cputime;
%                 if(dif(times)/n<=0.1)
%                     %     new_center(:,:,y)=ensemble_prototype2(new_data);%?????prototype
%                     [WW(:,y),new_center(:,:,y)]=ensemble_prototype2(kk,new_data,W_new,alg);
%                     T3=cputime-t7;
%                 else
%                     %     new_center(:,:,y)=ensemble_prototype(new_data);
%                     [WW(:,y),new_center(:,:,y)]=ensemble_prototype(kk,new_data,W_new,alg,corealg,R);
%                     T4=cputime-t7;
%                 end
                 [WW(:,y),new_center(:,:,y)]=barycenter(kk,new_data,W_new,alg,corealg,R);
            end
%             for i=1:len
%                 %         t=abs(distance1(new_center(:,:,y)',new_data(:,:,i)'));%??????????X(:,:,i)??b??end????
%                 %         distance(y)=assignsum(t);
%                 
%                 WA=WW(:,y)';WB=W_new(:,i)';
%                 if(alg==1)
%                     distance(y)=Sinkhorn(new_center(:,:,y)',new_data(:,:,i)',WA,WB);  %sinkhorn
%                 end
%                 if(alg==2)
%                     D=abs(distance1(new_center(:,:,y)',new_data(:,:,i)'));    %network
%                     distance(y)=maintest(D,WA/sum(WA),WB/sum(WB));
%                 end
%                 %         dis=dis+fast_emd(new_center(:,:,y)',new_data(:,:,i)');   %fast_emd
%                 ddis(times)=ddis(times)+distance(y);
%             end
%             diff_emd(y)=abs(ddis(times)-sum_emd(y))/(sum_emd(y)+0.01);
%             disp(diff_emd(y));
%             sum_emd(y)=ddis(times);
%             %     disp(sum_emd(y));
%             
%             %     disp(3);
%             %     dis=abs(distance1(new_center(:,:,y)',center(:,:,y)'));%????X(:,:,i)??b??end????   ??,???????????????????
%             %     t=assignsum(dis);
%             
%             %     t=fast_emd(new_center(:,:,y)',center(:,:,y)');
%             %     disp(t);
%             if diff_emd(y)<=0.001   %     if t<0.01
%                 p=p+1;
%             end
%             
            %     disp(norm(new_center(:,:,y)-center(:,:,y)));
            %     if norm(new_center(:,:,y)-center(:,:,y))<1
            %         p=p+1;
            %     end
            %     sum=0;%     for j=1:m%     sum=sum+norm(abs(new_center(j,:,y)-center(j,:,y))./center(j,:,y));%     end%     disp(sum./m);%     if (sum./m)<0.1%         %disp(max(abs(new_center(j,:,y)-center(j,:,y))./center(j,:,y)));%        p=p+1;%     end
        end
%         disp(p);
        if(diff_emd(times)<0.001||dif(times)/n<=0.03) %if(p==k)
            disp(sum(accu)/n);
            DD=dddis(times);
            resu=sum(accu)/n;
            break;
        else
            center=new_center;
        end
        t6=cputime;
        T2=t6-t5;  %prototype k times
    end
    t1=cputime-t0;%total time
    filenm=['aa1kmeansuniform0k5network' num2str(lun) '.mat'];
    save(filenm,'lun','T1','T2','s','t1','times','diff_emd','dif','resu','dddis','DD','center','WW','R','alg','kmeansalg','corealg');
end