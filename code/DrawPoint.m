function [x,y]=DrawPoint(x0,y0,R,num_Dian)
% 输入依次是：圆心横纵坐标，半径和点的数量
theta=0:0.001:360;
% 利用极坐标得到圆的坐标
Circle1=x0+R*cos(theta);
Circle2=y0+R*sin(theta);
% 画圆
% plot(Circle1,Circle2,'r')
% 随机生成num_Dian个半径
r=R*sqrt(rand(1,num_Dian));
% 得到生成点的角度，并利用极坐标形式画出点
seta=2*pi*rand(1,num_Dian);
% 得到点的坐标
x=x0+r.*cos(seta);
y=y0+r.*sin(seta);
% hold on
% % 画出点
% plot(x,y,'*');



%% syn
% center=zeros(20,2);
% data=zeros(30,2,20000);
% center(1,:)=randi([100 200],1,2);
%         for x=2:20
%             disp(x);
%             center(x,:)=randi([100 200],1,2);
%             for z=1:x-1
%                        distance(z)=min(abs(center(x,1)-center(z,1)),abs(center(x,2)-center(z,2)));
%                        
%             end                 
%             while (x > 1 && min(distance(1:z))<8)  % ????????????
%                 center(x,:)=randi([100 200],1,2);
%                 for z=1:x-1
%                        distance(z)=min(abs(center(x,1)-center(z,1)),abs(center(x,2)-center(z,2)));
%                        
%                 end
%             end
%         end
% for i=1:20
%     disp(i);
%      [X,Y]=DrawPoint(center(i,1),center(i,2),2,1000);
%      for j=1:1000
%          [x,y]=DrawPoint(X(1,j),Y(1,j),1,30);
%          data(:,1,(i-1)*1000+j)=x;
%          data(:,2,(i-1)*1000+j)=y;
%      end
% end
% for i=1:15
%     disp(i);
% %      [X,Y]=DrawPoint(center(i,1),center(i,2),2,1000);
%      for j=1:1000
%          [x,y]=DrawPoint(center(i,1),center(i,2),1,30);
%          data(:,1,(i-1)*1000+j)=x;
%          data(:,2,(i-1)*1000+j)=y;
%      end
% end
