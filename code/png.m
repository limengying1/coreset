


% 
x=1:1:3;
G1=[0.938 0.948 0.982];
G2=[0.983 0.928 0.973];


plot(x,G1,'-*b',x,G2,'-or');
xlabel('sample size');
ylabel('running time over baseline');
legend('coreset','uniform');
axis([0,4,0,2])  %确定x轴与y轴框图大小
name={'','0.2','0.4','0.6',''};
set(gca,'XTick',[0:1:4]) %x轴范围1-6，间隔1
set(gca,'YTick',[0:0.2:2]) %y轴范围0-700，间隔100
set(gca,'xTicklabel',name);


% x=[60.82,17.51;43.59,8.32;101.78,13.2];
% 
% y=[6.082,1.751;4.359,0.832;10.178,1.32] ;
% 
% legent={['WT'],['fgl']}; 

% x=[1.054,1.022;1.042,1.043;1.048,1.028]
% % y=[76,35;48,37; 40,32; 32,20; 28,22]
% y=[0,0;0,0;0,0];
% legent={['coreset'],['uniform']}
% groupnames= {'0.2','0.4','0.6'}
% % groupnames= {'0.1','0.2','0.3','0.4','0.5'}
% barweb(x,y,1,groupnames,'','sample size','objective value over baseline',jet,'none',legent,2,'plot')
% axis([0,4,1,1.2])  %确定x轴与y轴框图大小


% x = 1:1:6;
% y = []; 
% y1=[     ];
% err = [];
% err1 = [     ];
% % shadedErrorBar(x, y, err, 'lineprops', '-g')
% errorbar(x,y,err);%带误差条
% hold on
% errorbar(x,y1,err1);%带误差条
% 
% xlabel('coreset大小');
% ylabel('目标函数值');
% axis([0,7,15000,20000])  %确定x轴与y轴框图大小
% name={'','0.1','0.2','0.3','0.4','0.5','baseline',''};
% set(gca,'XTick',[0:1:7]) %x轴范围1-6，间隔1
% set(gca,'YTick',[15000:500:20000]) %y轴范围0-700，间隔100
% set(gca,'xTicklabel',name);

% G=[1120 1390 1583 1989 2109];
% S=[1329 1482 1680 1856 2076];
% x=1:1:5;
% %h=bar(1:6,[G',S']);
% %title('');
% plot(x,G,'-*b',x,S,'-or');
% xlabel('加入噪声的比例');
% ylabel('目标函数值');
% %ylabel('目标函数值（与Baseline相比）');
% %ylabel('与真实值的距离');
% legend('Core-set','Uniform sampling');
% axis([0,6,1000,2500])  %确定x轴与y轴框图大小
% name={'','0.02','0.04','0.06','0.08','0.1',''};
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[1000:200:2500]) %y轴范围0-700，间隔100
% set(gca,'xTicklabel',name);
% 
% G=[3.134 4.278 5.273 6.328 7.391 9.272  7.200];
% x=1:1:7;
% %plot(x,G,'-*b');
% h=bar(1:7,[G']);
%  %xlabel('Coreset大小');
% ylabel('运行时间（*1000）');
% %legend('Sinkhorn','Network Simplex');
% axis([0,8,0,11])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:8]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:1:11]) %y轴范围0-700，间隔100
% name={'','c-0.1','c-0.2','c-0.3','c-0.4','c-0.5','Baseline','mfcc'};
% set(gca,'xTicklabel',name);


% 
% 
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,40])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:5]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:40]) %y轴范围0-700，间隔100
% name={'','Baseline','0.3','0.2','0.1',''};
% set(gca,'xTicklabel',name);

%% 1
%kmeans k=5

% G=[36977 18146 22114 19369 14874];
% S=[38922 19063 17017 18234 20511];
% h=bar(1:5,[G',S']);
% title('Running time');
% xlabel('Core-set size');
% ylabel('Running time');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.3','0.2','0.1','0.05'};
% set(gca,'xTicklabel',name);

% G=[9 8 10 8 20];
% S=[8 8 8 14 13];
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,30])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:30]) %y轴范围0-700，间隔100
% name={'','Baseline','0.3','0.2','0.1','0.05',''};
% set(gca,'xTicklabel',name);

% G=[16492/16484 16428/16484 16640/16484 17232/16484];
% S=[15990/15670 15691/15670 15579/15670 16003/15670];
% h=bar(1:4,[G',S']);
% title('Objective value to baseline');
% xlabel('Core-set size');
% ylabel('Objective value to baseline');
% legend('Sinkhorn','Network Simplex');
% name={'0.3','0.2','0.1','0.05'};
% set(gca,'YLim',[0.6 1.4]);
% set(gca,'xTicklabel',name);



%kmeans k=10

% G=[32439 12893 15458 15428];
% S=[19138 13815 12583 14881];
% h=bar(1:4,[G',S']);
% title('Running time');
% xlabel('Core-set size');
% ylabel('Running time');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.3','0.2','0.1'};
% set(gca,'xTicklabel',name);

% G=[10 7 8 15];
% S=[7 8 9 36];
% x=1:1:4;
% plot(x,G,'-*b',x,S,'-or');
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,40])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:5]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:40]) %y轴范围0-700，间隔100
% name={'','Baseline','0.3','0.2','0.1',''};
% set(gca,'xTicklabel',name);

% G=[12854/12866 12643/12866 12803/12866];
% S=[12258/12543 12330/12543 12045/12543];
% h=bar(1:3,[G',S']);
% title('Objective value to baseline');
% xlabel('Core-set size');
% ylabel('Objective value to baseline');
% legend('Sinkhorn','Network Simplex');
% set(gca,'YLim',[0.6 1.4]);
% name={'0.3','0.2','0.1'};
% set(gca,'xTicklabel',name);


%kmeans k=15

% G=[21940 11135 13352 9918.6 14084];
% S=[20418 22989 12086 17440 20968];
% h=bar(1:5,[G',S']);
% title('Running time');
% xlabel('Core-set size');
% ylabel('Running time');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.5','0.4','0.3','0.2'};
% set(gca,'xTicklabel',name);

% G=[9 7 10 9 29];
% S=[8 13 10 10 16];
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,30])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:30]) %y轴范围0-700，间隔100
% name={'','Baseline','0.5','0.4','0.3','0.2',''};
% set(gca,'xTicklabel',name);

% G=[11247/11329 11443/11329 11308/11329 11458/11329];
% S=[10492/10710 10722/10710 10684/10710 10519/10710];
% h=bar(1:4,[G',S']);
% title('Objective value to baseline');
% xlabel('Core-set size');
% ylabel('Objective value to baseline');
% legend('Sinkhorn','Network Simplex');
% set(gca,'YLim',[0.6 1.4]);
% name={'0.5','0.4','0.3','0.2'};
% set(gca,'xTicklabel',name);

%kmeans++ k=5
% 
% G=[40522 27640 18368 13019 13207];
% S=[53082 24114 14488 13490 13724];
% h=bar(1:5,[G',S']);
% title('Running time');
% xlabel('Core-set size');
% ylabel('Running time');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.3','0.2','0.1','0.05'};
% set(gca,'xTicklabel',name);

% G=[10 10 9 9 11];
% S=[12 9 8 18 18];
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,30])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:30]) %y轴范围0-700，间隔100
% name={'','Baseline','0.3','0.2','0.1','0.05',''};
% set(gca,'xTicklabel',name);

% G=[16667/16687 16656/16687 16808/16687 16225/16687];
% S=[16005/15987 16268/15987 16010/15987 16281/15987];
% h=bar(1:4,[G',S']);
% title('Objective value to baseline');
% xlabel('Core-set size');
% ylabel('Objective value to baseline');
% legend('Sinkhorn','Network Simplex');
% set(gca,'YLim',[0.6 1.4]);
% name={'0.3','0.2','0.1','0.05'};
% set(gca,'xTicklabel',name);


%kmeans++ k=10
% 
% G=[33749 13954 12094 11499];
% S=[26527 12645 11150 13339];
% h=bar(1:4,[G',S']);
% title('Running time');
% xlabel('Core-set size');
% ylabel('Running time');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.3','0.2','0.1'};
% set(gca,'xTicklabel',name);
% 
% G=[11 12 14 11];
% S=[8 8 11 15];
% x=1:1:4;
% plot(x,G,'-*b',x,S,'-or');
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,30])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:5]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:30]) %y轴范围0-700，间隔100
% name={'','Baseline','0.3','0.2','0.1',''};
% set(gca,'xTicklabel',name);

% G=[12724/12651 12819/12651 12711/12651];
% S=[12124/12274 12213/12274 12126/12274];
% h=bar(1:3,[G',S']);
% title('Objective value to baseline');
% xlabel('Core-set size');
% ylabel('Objective value to baseline');
% legend('Sinkhorn','Network Simplex');
% set(gca,'YLim',[0.6 1.4]);
% name={'0.3','0.2','0.1'};
% set(gca,'xTicklabel',name);



%kmeans++ k=15

% G=[4.3688    4.3732    4.3581    4.3727    4.4037    4.4454];
% S=[4.3356    4.3419    4.3607    4.3341    4.3425    4.4113];
% h=bar(1:5,[G',S']);
% title('Running time');
% xlabel('Core-set size');
% ylabel('Running time');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.5','0.4','0.3','0.2'};
% set(gca,'xTicklabel',name);

% G=[11 10 10 13 19];
% S=[10 10 9 12 22];
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% title('Iterations');
% xlabel('Core-set size');
% ylabel('Iterations');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,30])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:5:30]) %y轴范围0-700，间隔100
% name={'','Baseline','0.5','0.4','0.3','0.2',''};
% set(gca,'xTicklabel',name);

% G=[11174/11330 11241/11330 11252/11330 11151/11330];
% S=[10689/10656 10801/10656 10693/10656 10592/10656];
% h=bar(1:4,[G',S']);
% title('Objective value to baseline');
% xlabel('Core-set size');
% ylabel('Objective value to baseline');
% legend('Sinkhorn','Network Simplex');
% set(gca,'YLim',[0.6 1.4]);
% name={'0.5','0.4','0.3','0.2'};
% set(gca,'xTicklabel',name);

%%%两类prototype的emd

% G=[16.0340 16.0580 16.5936 10.8575 19.8778];
% S=[15.9392 14.3444 15.4903 16.2111 14.1427];
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% title('emd value to the standard case');
% xlabel('Core-set size');
% ylabel('emd value to the standard case');
% legend('Sinkhorn','Network Simplex');
% axis([0,6,0,20])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:4:20]) %y轴范围0-700，间隔100
% name={'','Baseline','0.5','0.4','0.3','0.2',''};
% set(gca,'xTicklabel',name);

% G=[16.0340 16.0580 16.5936 10.8575 19.8778];
% S=[15.9392 14.3444 15.4903 16.2111 14.1427];
% h=bar(1:5,[G',S']);
% title('emd value to the standard case');
% xlabel('Core-set size');
% ylabel('emd value to the standard case');
% legend('Sinkhorn','Network Simplex');
% name={'Baseline','0.5','0.4','0.3','0.2'};
% set(gca,'xTicklabel',name);

%%% 
% G=[0.92 0.89 0.68 0.86 0.85];
% S=[0.86 0.90 0.71 0.82 0.77];
% h=bar(1:5,[G',S']);
% title('classification acccuracy with different kinds datas');
% xlabel('Core-set size');
% ylabel('classification acccuracy');
% legend('Sinkhorn','Network Simplex');
% name={'1','2','3','4','5'};
% set(gca,'xTicklabel',name);

%% 2计算标准差
%kmeanas--coreset
%coreset0

% % 次数6         5   8    12  7
% a=[6     5   8    12  7];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间31978   27477   59244   83590  50460
% b=[31978   27477   59244   83590  50460];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd 16554   16543 16608   16853  17021
% c=[16554 16543 16608 16853 17021];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数  8    5    7    9    7
% a=[  8    5    7    9    7];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[40397   23784    31866   46237   42137];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd   16853   16788    17096   17329   17031
% c=[16853   16788    17096   17329   17031];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数  6       5     9     8       9
% a=[6       5     9     8       9];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[28184  23934  41114  39048  45714];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[16667   16899  16857  16070  17185];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  5    7    11     6        7
% a=[5    7    11     6        7];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间  19716  28823   56201  30504   32044
% b=[19716  28823   56201  30504   32044];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[16125  16741  16831  16164   16953];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数  8       8      11    7     8
% a=[8       8      11    7     8];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[39884  33798  51439  31355  35800];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[16252  16829  16752  16127 17055];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数  8    7    6         11    7
% a=[8    7    6         11    7];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[31214 29541  26751  47646   29498];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[16735  16104  16100 16159  16922];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% % %% %kmeanas--uniform
% % %uniform0
% % 次数   5    8     12      7
% a=[ 5    8     12      7];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[30150 59879  87115  51582];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[16543 16608  16853  17021];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数   5      12    14      7      7
% a=[5      12    14      7      7];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[25940  58791  77901   39148   39855];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[16163  16834  16117  16522   16924];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数  13    6      7      8      8
% a=[13    6      7      8      8];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[62690  30986  34872   39741  44068];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[16186  16737  16594   16690  16828];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数  9     12    9      9        8
% a=[9     12    9      9        8];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[44369 57119  46432  48550   50555];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[16749 16771  16654  16669  16886];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数 7      8        9     8    8
% a=[7      8        9     8    8];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[28638  38039  66241 33542  40795];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[16771  17046 17049  16653  16921];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数 7     9      11    11    7
% a=[7     9      11    11    7];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[29841 29563 57829 70358  33216];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[17142 17077 17005  16215  16833];
% RR(12)=mean(c);
% rr(12)=std(c);
% 
% %% kmeans_uniform
% %uniform0
% % 次数  11    8    10     7
% a=[11    8    10     7];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[76683 68161 69901  55963];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[16751  16621 16977  16670];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %uniform0.5
% % 次数  8      7     7     7        6
% a=[8      7     7     7        6];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  52281 47866  46051   51774 38000
% b=[52281 47866  46051   51774 38000];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[16271  17209  16021   16162 16186];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %uniform0.4
% % 次数  6     7     8        8     6
% a=[6     7     8        8     6];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间 
% b=[35927  41469  47175  47035  35729];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[16539 16841  16338  16286  16165];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %uniform0.3
% % 次数 11     7        7   7      6
% a=[11     7        7   7      6];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[70617  29979 48534  43139 38095];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd  
% c=[16067  17179  16022 16147  16209];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %uniform0.2
% % 次数 11     10     7     6      5
% a=[11     10     7     6      5];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间 
% b=[68048  57003 40319  33224  28333];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[16304 16826 16648   17041 16224];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %uniform0.1
% % 次数 7      8      9     8      6
% a=[7      8      9     8      6];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间 
% b=[29618  48593  37781 38977  24621];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd 
% c=[16641 16362   16361  16279  16201];
% RR(18)=mean(c);
% rr(18)=std(c);
% % 
% % %% kmeans_coreset
% % %coreset0
% % 次数   11   8       10     7       10
% a=[11   8       10     7       10];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[78402  66691 70038  56694  76052];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[16751  16621  16977  16670  16977];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %coreset0.5
% % 次数  8     6      7     6         7
% a=[8     6      7     6         7];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[52604 35019 36021  37707  38164];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[16128  16630 16039  16084  16685];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %coreset0.4
% % 次数  7     11        11  7     6
% a=[7     11        11  7     6];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间  
% b=[39329 58522  62340 37550 31268];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[16390 16212  16334 16048 16713];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %coreset0.3
% % 次数  9      4     7    6       6
% a=[9      4     7    6       6];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[61293  21540 43796 37719   30053];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd 
% c=[17231   16666 16625  16425 16784];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %coreset0.2
% % 次数  7      7      11      7     8
% a=[7      7      11      7     8];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间  
% b=[33215  32468  77906  24454  41916];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[16641  16546  16211  16656  16682];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %coreset0.1
% % 次数  5      10      9      11    8
% a=[5      10      9      11    8];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间  
% b=[25744  48353  37085  51883 29529];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd   
% c=[16594  16588 16332  16182  16671];
% RR(24)=mean(c);
% rr(24)=std(c);
% % 
% % %% kmeans++coreset
% % %coreset0
% % 次数   11     10       13     13
% a=[11     10       13     13];
% QQ(25)=mean(a);
% qq(25)=std(a);
% % 时间  
% b=[83043  70076    95690   94743];
% PP(25)=mean(b);
% pp(25)=std(b);
% % emd   
% c=[16602  16325    16868   16509];
% RR(25)=mean(c);
% rr(25)=std(c);
% % %coreset0.5
% % 次数   11      8      10     10       13
% a=[11      8      10     10       13];
% QQ(26)=mean(a);
% qq(26)=std(a);
% % 时间  
% b=[66648   49797  65673   56457  84870];
% PP(26)=mean(b);
% pp(26)=std(b);
% % emd   16262  17080   16287   16789   16474
% c=[16262  17080   16287   16789   16474];
% RR(26)=mean(c);
% rr(26)=std(c);
% % %coreset0.4
% % 次数  10       9       6      10     12
% a=[10       9       6      10     12];
% QQ(27)=mean(a);
% qq(27)=std(a);
% % 时间  
% b=[53242   53629   29982   60933   69028];
% PP(27)=mean(b);
% pp(27)=std(b);
% % emd   
% c=[16201   16622   16285   16416  16695];
% RR(27)=mean(c);
% rr(27)=std(c);
% % %coreset0.3
% % 次数  7      13      6       7       11
% a=[7      13      6       7       11];
% QQ(28)=mean(a);
% qq(28)=std(a);
% % 时间  
% b=[29489  79823   26121   37472  54234];
% PP(28)=mean(b);
% pp(28)=std(b);
% % emd   
% c=[16286  16447   16312   16651 16690];
% RR(28)=mean(c);
% rr(28)=std(c);
% % %coreset0.2
% % 次数  9      17      7      7      8
% a=[9      17      7      7      8];
% QQ(29)=mean(a);
% qq(29)=std(a);
% % 时间 
% b=[ 29870  95282   34504  37045  36939];
% PP(29)=mean(b);
% pp(29)=std(b);
% % emd  
% c=[17035   16256   16599 16444   17134];
% RR(29)=mean(c);
% rr(29)=std(c);
% % %coreset0.1
% % 次数  9  12  16  8  11
% a=[9  12  16  8  11];
% QQ(30)=mean(a);
% qq(30)=std(a);
% % 时间  
% b=[17086  57350   76331  31826  47155];
% PP(30)=mean(b);
% pp(30)=std(b);
% % emd   
% c=[16187  16327   16239  16644  16821];
% RR(30)=mean(c);
% rr(30)=std(c);
% % 
% % %% kmeans++uniform
% % %uniform0
% % 次数  10     7        11     8
% a=[10     7        11     8];
% QQ(31)=mean(a);
% qq(31)=std(a);
% % 时间  
% b=[75600  52728  94023  64861];
% PP(31)=mean(b);
% pp(31)=std(b);
% % emd  16325  16323  16194   17098
% c=[16325  16323  16194   17098];
% RR(31)=mean(c);
% rr(31)=std(c);
% % %uniform0.5
% % 次数  11       7      9     11      13
% a=[11       7      9     11      13];
% QQ(32)=mean(a);
% qq(32)=std(a);
% % 时间  
% b=[75957  46901  63647  70372   85395];
% PP(32)=mean(b);
% pp(32)=std(b);
% % emd  
% c=[16242  16326  16301  16224  16551];
% RR(32)=mean(c);
% rr(32)=std(c);
% % %uniform0.4
% % 次数  11     7       11    7     8 
% a=[11     7       11    7     8 ];
% QQ(33)=mean(a);
% qq(33)=std(a);
% % 时间  
% b=[57429  37413  71256 42151  46033];
% PP(33)=mean(b);
% pp(33)=std(b);
% % emd  
% c=[16682   16652  16650 16184  17070];
% RR(33)=mean(c);
% rr(33)=std(c);
% % %uniform0.3
% % 次数  8      12     7       11      11
% a=[8      12     7       11      11];
% QQ(34)=mean(a);
% qq(34)=std(a);
% % 时间  
% b=[50271 75221    32441  68950    59179];
% PP(34)=mean(b);
% pp(34)=std(b);
% % emd  16332  16513  16844    16349    16733
% c=[16332  16513  16844    16349    16733];
% RR(34)=mean(c);
% rr(34)=std(c);
% % %uniform0.2
% % 次数    9      6      9       8      8
% a=[9      6      9       8      8];
% QQ(35)=mean(a);
% qq(35)=std(a);
% % 时间   
% b=[45790   25405  54793   34858  35814];
% PP(35)=mean(b);
% pp(35)=std(b);
% % emd   
% c=[16458    16464  16316   16173  17129];
% RR(35)=mean(c);
% rr(35)=std(c);
% % %uniform0.1
% % 次数   8      6       10      13     11
% a=[8      6       10      13     11];
% QQ(36)=mean(a);
% qq(36)=std(a);
% % 时间  
% b=[40784   18402   59855  83697   54214];
% PP(36)=mean(b);
% pp(36)=std(b);
% % emd   
% c=[16405   16310   16339  16327   16815];
% RR(36)=mean(c);
% rr(36)=std(c);

%%%emd标准差画图
%kmeans_
% G=[4.3732/4.3688    4.3581/4.3688    4.3727/4.3688    4.4037/4.3688    4.4454/4.3688];
% G=fliplr(G);
% S=[4.3419/4.3356    4.3607/4.3356    4.3341/4.3356    4.3425/4.3356    4.4113/4.3356];
% S=fliplr(S);
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% title('Kmeans--');
% xlabel('Core-set size');
% ylabel('Std. of emd values');
% legend('Coreset','Uniform Sampling');
% axis([0,0.6,0.8,1.2])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:0.1:0.6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0.8:0.1:1.2]) %y轴范围0-700，间隔100
% name={'0.1','0.2','0.3','0.4','0.5'};
% set(gca,'xTicklabel',name);

% G=[211.9144  213.9446  415.6703  389.4396  396.0297  393.8039];
% G=fliplr(G);
% S=[221.2892  371.2661  250.0200   93.0414  173.8448  375.5780];
% S=fliplr(S);
% x=1:1:6;
% plot(x,G,'-*b',x,S,'-or');
% title('kmeans--');
% xlabel('Core-set size');
% ylabel('std. of emd values');
% legend('coreset','uniform sampling');
% axis([0,7,0,500])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:100:500]) %y轴范围0-700，间隔100
% name={'0.1','0.2','0.3','0.4','0.5','baseline'};
% set(gca,'xTicklabel',name);

%%%时间均值
%kmeans-- k=5


% kmeans k=5
% G=[1.8651/1.8648    1.8737/1.8648   1.8810/1.8648    1.8832/1.8648    1.8966/1.8648];
% G=fliplr(G);
% S=[1.8686/1.8648    1.8556/1.8648    1.8573/1.8648    1.8710/1.8648    1.8922/1.8648];
% S=fliplr(S);
% x=1:1:5;
% plot(x,G,'-*b',x,S,'-or');
% % title('USPS datasets');
% xlabel('Core-set size');
% ylabel('objective values over the base line');
% legend('Coreset','Uniform Sampling');
% axis([0,6,0.8,1.2])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0.8:0.05:1.2]) %y轴范围0-700，间隔100
% name={'','0.1','0.2','0.3','0.4','0.5',''};
% set(gca,'xTicklabel',name);

%kmeans k=5
% G=[93872.6169800926	 52269.9469036465	48857.2328986894	46496.8144511630	45154.8796182439	44488.3709699488	43926.5512828848	43914.4274925203];
% % G=fliplr(G);
% P2=[84669.4781396341	48099.8188447907	46562.0452556472	46229.5444224714	45900.5150451555	45360.5774525450	44951.4854572786	44307.3449239068	43761.1510657146	43738.9213306125
% P3=[87462.0281229891	47955.9738739783	46042.8194692851	45010.1163210438	44743.7276237851	44457.9273197973	43878.1840501584	43709.4752706585	43455.4810926837	43575.5810789730	43591.7194784118
% P4=[91697.2661128751	52638.4590547557	48318.7219153235	46804.9838018370	45566.4000659240	44770.1043893074	44280.4778619380	43978.0472185631	43793.7735195871	43485.2109307450	43523.2546733949
% P5=[88064.8537679166	50504.3218349192	47106.7088004885	45895.9652692448	44948.1593359943	44314.8578234204	43752.2150324782	43309.1928340156	43299.4375746618
% P6=[97021.1365425656	46317.5675719640	45288.3877433757	44671.5547697959	44228.6068657327	43898.2576525445	43672.8200960888	43504.9734515896	43339.2554825271
% S=[];
% S=fliplr(S);
% x=1:1:6;
% plot(x,G,'-*b',x,S,'-or');
% title('USPS datasets');
% xlabel('running time');
% ylabel('objective value');
% legend('Coreset','Uniform Sampling');
% axis([0,7,200,700])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[200:100:700]) %y轴范围0-700，间隔100
% name={'','0.1','0.2','0.3','0.4','0.5','Baseline',''};
% set(gca,'xTicklabel',name);

%%Usps
% figure(1);
% T1=[12669/12:12669/12:12669];
% T2=[16747/10:16747/10:16749];
% T3=[20945/11:20945/11:20945];
% T4=[26591/11:26591/11:26591];
% T5=[24334/9:24334/9:24334];
% T6=[47273/9:47273/9:47273];
% P1=[91282.6198500568	48668.3599195539	46560.2116283882	45587.7772098852	45051.6924466872	44291.3123979412	44756.0272462267	43746.9480666464	44073.6072758326	43872.0601620359	43786.5384339064	43809.1081311741];
% P2=[84669.4781396341	48099.8188447907	46562.0452556472	46229.5444224714	45900.5150451555	45360.5774525450	44951.4854572786	44307.3449239068	43761.1510657146	43738.9213306125];
% P3=[87462.0281229891	47955.9738739783	46042.8194692851	45010.1163210438	44743.7276237851	44457.9273197973	43878.1840501584	43709.4752706585	43455.4810926837	43575.5810789730	43591.7194784118];
% P4=[91697.2661128751	52638.4590547557	48318.7219153235	46804.9838018370	45566.4000659240	44770.1043893074	44280.4778619380	43978.0472185631	43793.7735195871	43485.2109307450	43523.2546733949];
% P5=[88064.8537679166	50504.3218349192	47106.7088004885	45895.9652692448	44948.1593359943	44314.8578234204	43752.2150324782	43309.1928340156	43299.4375746618];
% P6=[97021.1365425656	46317.5675719640	45288.3877433757	44671.5547697959	44228.6068657327	43898.2576525445	43672.8200960888	43504.9734515896	43339.2554825271];
% % plot(T,P1,'r.',T,P2,'b.',T,P3,'g.');
% line(T1,P1,'Color','m','Marker','o');
% line(T2,P2,'Color','b','Marker','+');
% line(T3,P3,'Color','g','Marker','*');
% line(T4,P4,'Color','y','Marker','x');
% line(T5,P5,'Color','r','Marker','d');
% line(T6,P6,'Color','k','Marker','s');
% legend('core=0.1','core=0.2','core=0.3','core=0.4','core=0.5','Baseline');
% axis([1000 50000 40000 100000]);
% xlabel('cputime(*s)');
% ylabel('objective value');
% title('Convergence performance');

%%Minist
% T1=[7486/20:7486/20:7486];
% T2=[8122/11:8122/11:8122];
% T3=[14393/13:14393/13:14393];
% T4=[15645/9:15645/9:15645];
% T5=[22016/10:22016/10:22016];
% T6=[42188/9:42188/9:42188];
% P1=[35606.8097002425	20330.0187952129	20008.9586022299	19739.9834940157	19196.1846327024	19254.3321434623	18773.3506107738	19198.5155104459	18869.8868944116	18787.5117994129	18914.1632916627	19422.1152516359	18658.3720405749	19563.2044447138	18777.9436603414	19124.1165883278	19911.9562181518	18964.8077939728	18677.7625411821	18685.0379903748];
% P2=[41952.5659366953	22022.9264587115	20730.3800311922	19680.0130942311	19505.5480483821	18988.7182026871	18842.8222574263	18953.5280612966	19079.5333384921	18957.0796694498	18957.4768842806];
% P3=[44614.3964059603	20388.5588231388	19507.7029840481	19182.3879806068	18943.7775011783	18758.1582083691	18571.3419846369	18697.5681523924	18787.2645245413	18606.7527460527	18635.0761480774	18507.0485789579	18513.0137545078];
% P4=[41656.8626786085	20068.8711778269	19043.1236144232	18851.8981741972	18683.4385687200	18627.6666718235	18671.5500174246	18599.3199859009	18587.5519354835];
% P5=[50541.0891717223	20011.6033519317	19490.6729127920	19555.6763741624	19280.1959540525	19084.4347287119	19058.8104973248	18999.0295092339	18944.1392630152	18944.1881574653];
% P6=[50623.5928496824	20082.4831903956	19442.5294225335	19197.0162809490	19082.3366406591	18988.2577736275	18889.6719886630	18796.5423060876	18699.9869572127];
% % plot(T,P1,'r.',T,P2,'b.',T,P3,'g.');
% line(T1,P1,'Color','m','Marker','o');
% line(T2,P2,'Color','b','Marker','+');
% line(T3,P3,'Color','g','Marker','*');
% line(T4,P4,'Color','y','Marker','x');
% line(T5,P5,'Color','r','Marker','d');
% line(T6,P6,'Color','k','Marker','s');
% legend('core=0.1','core=0.2','core=0.3','core=0.4','core=0.5','Baseline');
% axis([300 50000 15000 60000]);
% xlabel('cputime(*s)');
% ylabel('objective value');
% title('Convergence performance');

%%%迭代次数标准差画图
%kmeans_
% G=[2.7019    1.4832    1.8166    2.2804    1.5166    1.9235];
% G=fliplr(G);
% S=[2.9439    3.8079    2.7019    1.5166    0.7071    2.0000];
% S=fliplr(S);
% h=bar(1:6,[G',S']);
% title('Kmeans--');
% xlabel('Core-set size');
% ylabel('Std. of Iterations');
% legend('Coreset','Uniform Sampling');
% name={'0.1','0.2','0.3','0.4','0.5','Baseline'};
% set(gca,'xTicklabel',name);


%% 3noisy 60kmeans sinkhorn k5数据

%kmeanas--coreset
%coreset0

% % % 次数 
% a=[4  9  9  7  6];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[11044  24403  27325  21414  17261];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[19112  19198  19024  18968  18680];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[8  11  11  6];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[19620  30036  30486  13498];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[18825  18776  18716  18688];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[10  9  14  6];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[19870  22790  34523  12105];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[18927  19528  18362  18681];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[13  9  9  7  5];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[24967  22641  20452  16767  8107];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[18732  18929  18867  19078  18708];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[9  9  13  7  6];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[14592  17818  29722  14780  9290];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[18756  18800  19110  19177  18707];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[12  18  12  8  7];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[10934  38918  25303  11317  9545];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[18743  18708  18350  18392  18634];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas--uniform
% % %uniform0
% % 次数    
% a=[4  9  9  7  6];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[11429  23918  27644  21374  18207];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[19112  19138  19024  18968  18680];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[12  6  4  9  6];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[26827   12549  7799  19895  14556];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[19023  18519  18780  18790  18685];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[12  8  9  8  6];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[25416  20507  23248  20165  14337];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[19016  20084  18438  18785  18686];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[7  7  8  8  6];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[14265  14790  17919  18092  12486];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[19168  18798  18457  18727  18692];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[12  5  10  7  6];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[24955 11494  21768  14788  11910];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[18738  18639  19538  18806  18693];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[6  7  10  10  7];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[8241  14027  24770  24712  15003];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[19202  18535  19171  19059  18699];
% RR(12)=mean(c);
% rr(12)=std(c);
% 
% %kmeans coreset
% %coreset0
% % 次数   
% a=[10 5  8  8  5];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[35017 16028  24728  28537  17974];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[18601 19034  18660  18314  18688];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %coreset0.5
% % 次数
% a=[9  9  5  11  6];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  
% b=[26525  24986  12480  32844  16710];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[18212  18629  18146  18358  18634];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %coreset0.4
% % 次数
% a=[10  9  9  7  6];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间  
% b=[28750  27715  25241  18661  11627];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[18467  18363  18991  18336  19171];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %coreset0.3
% % 次数
% a=[11 6  6  5  5];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[28273  13995  13702  12048  9322];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd 
% c=[18263 18927  18618  18526  18598];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %coreset0.2
% % 次数 
% a=[5  8  7  8  7];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间  
% b=[11085 19166  13347  17774  13211];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[18463 19046  18362  18345  18548];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %coreset0.1
% % 次数 
% a=[15  8  9  8  8];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间  
% b=[40144  12037  20425  8958  11332];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd   
% c=[18352  18703  18837  18594  18509];
% RR(18)=mean(c);
% rr(18)=std(c);
% %%kmeans uniform
% %uniform0
% % 次数 
% a=[10  5  8  8  5];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[36563  15436  25745  28625  18991];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[18601  19034  18749  18314  18688];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %uniform0.5
% % 次数  
% a=[7  9  11  10  5];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[20200  25873  30115   26937  13850];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[18647  18311  18604  18352  18684];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %uniform0.4
% % 次数 
% a=[8  7  7  11  5];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间 
% b=[21866  17049  17419  28472  13447];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[18531  18325  18715  18398  18687];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %uniform0.3
% % 次数  
% a=[8  10  6  5  6];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[16838  26633  13636  12533  15138];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd  
% c=[19114  18764  18238  18453   18626];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %uniform0.2
% % 次数  
% a=[8  10  6  5  6];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间 
% b=[16569  25132  12700  12453  14951];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[18621  18911  18233  18463  18630];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %uniform0.1
% % 次数  
% a=[8  12  6  5  6];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间 
% b=[13234  21249  10670  10022  13113];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd 
% c=[18772  18819  18286  18466  18638];
% RR(24)=mean(c);
% rr(24)=std(c);
% 
% % kmeans++ coreset
% % %coreset0
% % 次数   
% a=[9  7  6  7  10];
% QQ(25)=mean(a);
% qq(25)=std(a);
% % 时间  
% b=[28765  24097  21272  21594  34726];
% PP(25)=mean(b);
% pp(25)=std(b);
% % emd   
% c=[19094  18605  18979  19085  18428];
% RR(25)=mean(c);
% rr(25)=std(c);
% % %coreset0.5
% % 次数  
% a=[6  6  7  11  8];
% QQ(26)=mean(a);
% qq(26)=std(a);
% % 时间  
% b=[16180  16162  18939  34475  21111];
% PP(26)=mean(b);
% pp(26)=std(b);
% % emd  
% c=[18790  18895  18934  18606  19078];
% RR(26)=mean(c);
% rr(26)=std(c);
% % %coreset0.4
% % 次数  
% a=[6  7  9  9  12];
% QQ(27)=mean(a);
% qq(27)=std(a);
% % 时间  
% b=[14093  17816  18191  26179  32060];
% PP(27)=mean(b);
% pp(27)=std(b);
% % emd   
% c=[18710  18439  19355  18962  18605];
% RR(27)=mean(c);
% rr(27)=std(c);
% % %coreset0.3
% % 次数 
% a=[13  8  7  7  9];
% QQ(28)=mean(a);
% qq(28)=std(a);
% % 时间  
% b=[33841  19655  16207  13699  22636];
% PP(28)=mean(b);
% pp(28)=std(b);
% % emd   
% c=[18523   18762  18409  19077  19116];
% RR(28)=mean(c);
% rr(28)=std(c);
% % %coreset0.2
% % 次数  
% a=[10  8  8  7  14];
% QQ(29)=mean(a);
% qq(29)=std(a);
% % 时间 
% b=[25261  19205  17989  14743  39940];
% PP(29)=mean(b);
% pp(29)=std(b);
% % emd  
% c=[18832  19035  18917  18914  18726];
% RR(29)=mean(c);
% rr(29)=std(c);
% % %coreset0.1
% % 次数  
% a=[8  14  9  9  12];
% QQ(30)=mean(a);
% qq(30)=std(a);
% % 时间  
% b=[16443  14140  19094  13865  13643];
% PP(30)=mean(b);
% pp(30)=std(b);
% % emd   
% c=[18790  18783  19094  18973  18587];
% RR(30)=mean(c);
% rr(30)=std(c);
% % 
% % %% kmeans++uniform
% % %uniform0
% % 次数  
% a=[7  11  9  10  14];
% QQ(31)=mean(a);
% qq(31)=std(a);
% % 时间  
% b=[23808  38322  31047  34557  50646];
% PP(31)=mean(b);
% pp(31)=std(b);
% % emd   
% c=[19173  18560  18955  18710  18730];
% RR(31)=mean(c);
% rr(31)=std(c);
% % %uniform0.5
% % 次数   
% a=[6  7  9  10  7];
% QQ(32)=mean(a);
% qq(32)=std(a);
% % 时间  
% b=[15553  18550  24639  28549  19017];
% PP(32)=mean(b);
% pp(32)=std(b);
% % emd  
% c=[18579  18992  18630  18574  19396];
% RR(32)=mean(c);
% rr(32)=std(c);
% % %uniform0.4
% % 次数   
% a=[9  6  8  7  11];
% QQ(33)=mean(a);
% qq(33)=std(a);
% % 时间  
% b=[23577  16141  17883  17991  33156];
% PP(33)=mean(b);
% pp(33)=std(b);
% % emd  
% c=[19017  19043  18667  19383  19091];
% RR(33)=mean(c);
% rr(33)=std(c);
% % %uniform0.3
% % 次数  
% a=[8  7  6  9  7];
% QQ(34)=mean(a);
% qq(34)=std(a);
% % 时间  
% b=[21881  13986  16080  22796  17667];
% PP(34)=mean(b);
% pp(34)=std(b);
% % emd   
% c=[18397  18865  18234  18646  18872];
% RR(34)=mean(c);
% rr(34)=std(c);
% % %uniform0.2
% % 次数    
% a=[6  6  8  6  8];
% QQ(35)=mean(a);
% qq(35)=std(a);
% % 时间   
% b=[12853  9092  18642  10660  19686];
% PP(35)=mean(b);
% pp(35)=std(b);
% % emd   
% c=[18983  18616  18432  18394  19376];
% RR(35)=mean(c);
% rr(35)=std(c);
% % %uniform0.1
% % 次数    
% a=[6  9  12  11  7];
% QQ(36)=mean(a);
% qq(36)=std(a);
% % % 时间  
% b=[11662  25045  24952  25545  15010];
% PP(36)=mean(b);
% pp(36)=std(b);
% % emd   
% c=[18561  18405  18847  18689  19298];
% RR(36)=mean(c);
% rr(36)=std(c);

%% noisy60画图
%%emd均值
%%coreset下kmeans++和kmeans emd比较
% G=[1.8659    1.8396    1.8666    1.8586    1.8553    1.8599 ];
% G=fliplr(G);
% S=[1.8838    1.8861    1.8814    1.8777    1.8885    1.8845 ];
% S=fliplr(S);
% x=1:1:6;
% plot(x,G,'-*b',x,S,'-or');
% title('Coreset Sampling');
% xlabel('Core-set size');
% ylabel('Means of emd values');
% legend('Kmeans','Kmeans++');
% axis([0,7,1.7,2])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[1.7:0.02:2]) %y轴范围0-700，间隔100
% name={'','0.1','0.2','0.3','0.4','0.5','Baseline',''};
% set(gca,'xTicklabel',name);

%%uniform下kmeans++和kmeans emd比较
% G=[1.8677    1.8520    1.8531    1.8639    1.8572    1.8596];
% G=fliplr(G);
% S=[1.8826    1.8834    1.9040    1.8603    1.8760    1.8760];
% S=fliplr(S);
% x=1:1:6;
% plot(x,G,'-*b',x,S,'-or');
% title('uniform Sampling');
% xlabel('Core-set size');
% ylabel('Means of emd values');
% legend('Kmeans','Kmeans++');
% axis([0,7,1.7,2])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[1.7:0.02:2]) %y轴范围0-700，间隔100
% name={'','0.1','0.2','0.3','0.4','0.5','Baseline',''};
% set(gca,'xTicklabel',name);



%%%emd标准差画图
%kmeans--
% G=[197.2836   61.3589  493.2602  151.4784  216.9758  182.3782];
% G=fliplr(G);
% S=[183.2834  183.1483  639.5234  257.4282  371.3539  299.1826];
% S=fliplr(S);
% h=bar(1:6,[G',S']);
% title('Kmeans--');
% xlabel('Core-set size');
% ylabel('Std. of emd values');
% legend('Coreset','Uniform Sampling');
% name={'0.1','0.2','0.3','0.4','0.5','Baseline'};
% set(gca,'xTicklabel',name);

% G=[197.2836   61.3589  493.2602  151.4784  216.9758  182.3782];
% G=fliplr(G);
% S=[183.2834  183.1483  639.5234  257.4282  371.3539  299.1826];
% S=fliplr(S);
% x=1:1:6;
% plot(x,G,'-*b',x,S,'-or');
% title('kmeans--');
% xlabel('Core-set size');
% ylabel('std. of emd values');
% legend('coreset','uniform sampling');
% axis([0,7,0,700])  %确定x轴与y轴框图大小
% set(gca,'XTick',[0:1:6]) %x轴范围1-6，间隔1
% set(gca,'YTick',[0:100:700]) %y轴范围0-700，间隔100
% name={'','0.1','0.2','0.3','0.4','0.5','baseline',''};
% set(gca,'xTicklabel',name);

%%kmeans
% G=[256.8342  228.4364  387.6078  237.3695  287.6277  184.7931];
% G=fliplr(G);
% S=[259.9513  174.6319  171.9860  330.4603  248.7404  221.0593];
% S=fliplr(S);
% h=bar(1:6,[G',S']);
% title('Kmeans');
% xlabel('Core-set size');
% ylabel('Std. of emd values');
% legend('Coreset','Uniform Sampling');
% name={'0.1','0.2','0.3','0.4','0.5','Baseline'};
% set(gca,'xTicklabel',name);

%kmeans++
% G=[303.6506  175.8118  356.9688  318.2315  114.5151  194.8186];
% G=fliplr(G);
% S=[240.0402  358.8345  254.9102  283.4832  415.7706  341.9357];
% S=fliplr(S);
% h=bar(1:6,[G',S']);
% title('Kmeans++');
% xlabel('Core-set size');
% ylabel('Std. of emd values');
% legend('Coreset','Uniform Sampling');
% name={'0.1','0.2','0.3','0.4','0.5','Baseline'};
% set(gca,'xTicklabel',name);

%% ministk40 数据
%kmeanas--coreset
%coreset0

% % % 次数 
% a=[8  6  9  12  8];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[6368  5026  8289  11137  7145];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[16799  17198  17655  16784  17432];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[7  4  10  8   8];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[5457  2887  7321  6269  6045];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[17538  17297  17505  16988  17394];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[9  14  12  10  9];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[6526  10563  9211  7332  7465];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[17557  17345  17425  16714  17389];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[9  6  10  7  10];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[6678  4129  7938  4923  7850];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[16739  17860  17377  16689  17275];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[11  11  8  12  9];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[5855  6292  5370  9436  6273];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[17273  17203  17470  17360  17735];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[12  8  9  9  9];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[3584  4210  3379  4037  5859];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[17312 17519 16747 17495  17450];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas--uniform
% % %uniform0
% % 次数    
% a=[8  6  9  12  8];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[6270  4785  7962  11004  7098];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[16799  17198  17655  16784  17432];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[7  7  8  10  8];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[4571 4529  5547  8119  5737];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[16740  17308  16946  17500  17527];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[7  5  11  9  9];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[5009  3269  8446  7600  6885];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[16777  17298  16783  17566  17279];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[13  11  11  6  8];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[8882  9285  8999  2992  6106];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[17274  16768  17306  17871  17484];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[7  9  9  13  8];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[3702  5356  5440  10303  5537];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[16866  16820  16949  17297  17576];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[7  9  8  5  9];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[3207  5037  5423  3276  6100];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[17551  17274  16821  17107  17384];
% RR(12)=mean(c);
% rr(12)=std(c);
% 
% %kmeans coreset
% %coreset0
% % 次数   
% a=[6  7  6  7  7];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[5489  8262  7312  7149  6910];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[17615  17228  16927  17911  17305];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %coreset0.5
% % 次数
% a=[7  7  7  7  6];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  
% b=[6910  5160   6077  6077  4792];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[16776  16726  17291  17338  17261];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %coreset0.4
% % 次数
% a=[6  5  6  6  9];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间  
% b=[4288   3871  4792  5935  6792];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[17349  16688  17418  17701  16821];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %coreset0.3
% % 次数
% a=[10  10  7  12  7];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[6131  6966  5251  11630  46565];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd 
% c=[17604  16902  17839  16780  17338];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %coreset0.2
% % 次数 
% a=[6 6 8  6  7];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间  
% b=[3649 3712 6706  4018  4073];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[17497  17282  17071  16788  17270];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %coreset0.1
% % 次数 
% a=[9  12  11  7  8];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间  
% b=[3941  4391  7319  5133  4663];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd   
% c=[17331  17011  16758  17060  17268];
% RR(18)=mean(c);
% rr(18)=std(c);
% %%kmeans uniform
% %uniform0
% % 次数 
% a=[6  7  6  7  7];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[5063  7176  6249  6963  7239];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[17615  17228  16927  17911  17305];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %uniform0.5
% % 次数  
% a=[5  13  9  8  7];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[4294  11875  9703  7544  6209];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[17447  16976  17650  16789  17281];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %uniform0.4
% % 次数 
% a=[6  5  16  8  6];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间 
% b=[3947  3083  15249  7034  3985];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[17288  17649  17200  17235  17304];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %uniform0.3
% % 次数  
% a=[6  10  8  8  7];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[3878  7175  7009  6957  5601];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd  
% c=[17395  17181  17335  17244  17285];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %uniform0.2
% % 次数  
% a=[8  7  7  8  7];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间 
% b=[6156  5649  5748  6594  5667];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[17563  17707  17325  17249  17271];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %uniform0.1
% % 次数  
% a=[6  6  9  7  7];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间 
% b=[4461  4415  8876  4731  4669];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd 
% c=[17672  17278  17703  16827  17347];
% RR(24)=mean(c);
% rr(24)=std(c);
% 
% % kmeans++ coreset
% % %coreset0
% % 次数   
% a=[10  11  6  8  5];
% QQ(25)=mean(a);
% qq(25)=std(a);
% % 时间  
% b=[9200  10197  6446  8195  5168];
% PP(25)=mean(b);
% pp(25)=std(b);
% % emd   
% c=[17331  17341  17182  17290  17573];
% RR(25)=mean(c);
% rr(25)=std(c);
% % %coreset0.5
% % 次数  
% a=[10  7  9   8  5];
% QQ(26)=mean(a);
% qq(26)=std(a);
% % 时间  
% b=[7786  6226  8435  6983  4076];
% PP(26)=mean(b);
% pp(26)=std(b);
% % emd  
% c=[17304  17282  16829  16901  17627];
% RR(26)=mean(c);
% rr(26)=std(c);
% % %coreset0.4
% % 次数  
% a=[8  7  8  7  6];
% QQ(27)=mean(a);
% qq(27)=std(a);
% % 时间  
% b=[5575  6632  6178  5583  5703];
% PP(27)=mean(b);
% pp(27)=std(b);
% % emd   
% c=[17766  17251  17174  17385  17521];
% RR(27)=mean(c);
% rr(27)=std(c);
% % %coreset0.3
% % 次数 
% a=[9  6  9  10  6];
% QQ(28)=mean(a);
% qq(28)=std(a);
% % 时间  
% b=[5686  3733  8568  6800  4628];
% PP(28)=mean(b);
% pp(28)=std(b);
% % emd   
% c=[16829 16910  17213  17495  17470];
% RR(28)=mean(c);
% rr(28)=std(c);
% % %coreset0.2
% % 次数  
% a=[9  8  14  10  6];
% QQ(29)=mean(a);
% qq(29)=std(a);
% % 时间 
% b=[5733  4933  11256  8378  3923];
% PP(29)=mean(b);
% pp(29)=std(b);
% % emd  
% c=[17024  17500  16915  17306  17386];
% RR(29)=mean(c);
% rr(29)=std(c);
% % %coreset0.1
% % 次数  
% a=[11  11  6  11  8];
% QQ(30)=mean(a);
% qq(30)=std(a);
% % 时间  
% b=[5039  8593  4595  7362  5194];
% PP(30)=mean(b);
% pp(30)=std(b);
% % emd   
% c=[17183  17475  17341  17311  17668];
% RR(30)=mean(c);
% rr(30)=std(c);
% % 
% % %% kmeans++uniform
% % %uniform0
% % 次数  
% a=[10  11  6  8  5];
% QQ(31)=mean(a);
% qq(31)=std(a);
% % 时间  
% b=[9131  10056  6317  8050  5082];
% PP(31)=mean(b);
% pp(31)=std(b);
% % emd   
% c=[17331  17341  17182  17290  17573];
% RR(31)=mean(c);
% rr(31)=std(c);
% % %uniform0.5
% % 次数   
% a=[7  6  10  10  5];
% QQ(32)=mean(a);
% qq(32)=std(a);
% % 时间  
% b=[5104  4368  8479  8145  3692];
% PP(32)=mean(b);
% pp(32)=std(b);
% % emd  
% c=[17568  17820  16908  16947  17604 ];
% RR(32)=mean(c);
% rr(32)=std(c);
% % %uniform0.4
% % 次数   
% a=[9  10  6  10  6];
% QQ(33)=mean(a);
% qq(33)=std(a);
% % 时间  
% b=[6752  8250  4273  7950  4798];
% PP(33)=mean(b);
% pp(33)=std(b);
% % emd  
% c=[17546  17020  17632  17337  17573];
% RR(33)=mean(c);
% rr(33)=std(c);
% % %uniform0.3
% % 次数  
% a=[9  6  10  10  5];
% QQ(34)=mean(a);
% qq(34)=std(a);
% % 时间  
% b=[6645  4198  8899  7878  3640];
% PP(34)=mean(b);
% pp(34)=std(b);
% % emd   
% c=[17299  17822  16879  16990  17592];
% RR(34)=mean(c);
% rr(34)=std(c);
% % %uniform0.2
% % 次数    
% a=[6  10  9  7  6];
% QQ(35)=mean(a);
% qq(35)=std(a);
% % 时间   
% b=[3681  7783  7388  4308  5309];
% PP(35)=mean(b);
% pp(35)=std(b);
% % emd   
% c=[17247  17331  16905  16877  17201];
% RR(35)=mean(c);
% rr(35)=std(c);
% % %uniform0.1
% % 次数    
% a=[8  11  7  8  6];
% QQ(36)=mean(a);
% qq(36)=std(a);
% % % 时间  
% b=[4969  6523  4856  5582  3322];
% PP(36)=mean(b);
% pp(36)=std(b);
% % emd   
% c=[17727  17463  17210  17481  17575];
% RR(36)=mean(c);
% rr(36)=std(c);

%% minist40noisy 数据

%%kmean--
%%coreset
% % % 次数 
% a=[9  8  15  10  8];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[7745  6694  14736  10539  9803];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[20428 19420  19851  20656  19966];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[6  7  9  8  9];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[3836  5214  8028  6418  8627];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[19731  20015  19277  20401  19896];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[12  6  5  8  9];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[9773  4953  4370  5723  7302];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[19723  19277  19787  19236  20198];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[10  12  9  11  14];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[6660  7628  7321  8843  12731];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[19287  19920  20142  19904  19862];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[7  8  16  6  7];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[3875  4669  14045  4670  6165];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[19408  19301  19536  20380  19665];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[6  11  7  6  10];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[3315  8686  3472  3258  7778];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[19360  19285  19920  19866  20095];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas--uniform
% % %uniform0
% % 次数    
% a=[9  8  15  10  8];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[8047  6580  14373  10689  9568];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[20428  19420  19851  20656  19966];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[10  7  6  11  7];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[7176  5186  4666  10194  6676];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[19917  19241  19326  20551  19341];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[10  9  10  7  10];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[6936  7206  7568  5835  10344];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[21309  20349  19813  19885  19752];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[5  8  7  10  9];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[3020  5608  5429  8734  7848];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[19863  19789  20292  19392  19799];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[12  8  8  9  11];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[7663  6162  5834  7114  9058];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[20054  19810  19811  19733  19893];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[7  16  6  8  10];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[3431  12399  3536  6820  9995];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[19675  19549  19258  19574  20187];
% RR(12)=mean(c);
% rr(12)=std(c);
% 
% %kmeans coreset
% %coreset0
% % 次数   
% a=[8  7  8  6  10];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[10147  8706  8743  6061  11277];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[19565  19232  19657  19278  19667];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %coreset0.5
% % 次数
% a=[6  13  10  10  12];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  
% b=[5879  15357  9185  8849  10736];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[19912  19292  20074  19755  19410];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %coreset0.4
% % 次数
% a=[10  7  8  10  5];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间  
% b=[10206  6598  7063  8747  4256];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[19429  19197  19501  19898  19807];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %coreset0.3
% % 次数
% a=[11  9  6  9  9];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[10940  7030  4828  7851  6230];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd 
% c=[19667  19241  19223  19669  19255];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %coreset0.2
% % 次数 
% a=[6  10  14  6  8];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间  
% b=[4717  6975  13329  4691  6334];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[19278  19821  19696  20340  19471];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %coreset0.1
% % 次数 
% a=[8  8  10  10  8];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间  
% b=[5548  6476  6979  8147  7093];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd   
% c=[19681  19450  19977  19299  19772];
% RR(18)=mean(c);
% rr(18)=std(c);
% %%kmeans uniform
% %uniform0
% % 次数 
% a=[8  7  8  6  10];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[10037  8306  8311  6043  10890];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[19565  19232  19657  19278  19667];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %uniform0.5
% % 次数  
% a=[11  5  6  7  7];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[12548  4522  4959  6703  6484];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[19493  19369  19980  19693  19193];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %uniform0.4
% % 次数 
% a=[7  11  9  7  8];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间 
% b=[8276  9527  8354  6509  6789];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[19380  19708  19288  19792  19608];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %uniform0.3
% % 次数  
% a=[7  9  10  6  11];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[8076  8239  8563  4291  9521];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd  
% c=[19270  19186  19670  19206  19827];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %uniform0.2
% % 次数  
% a=[8  8  6  11  9];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间 
% b=[8820  6585  4384  9213  8885];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[19596  20089  19551  19783  19570];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %uniform0.1
% % 次数  
% a=[12  5  5  10  7];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间 
% b=[9638  3633  3573  7535  4797];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd 
% c=[19216  20445  19755  19435  20054];
% RR(24)=mean(c);
% rr(24)=std(c);
% 
% % kmeans++ coreset
% % %coreset0
% % 次数   
% a=[10  8  6  9  6];
% QQ(25)=mean(a);
% qq(25)=std(a);
% % 时间  
% b=[12644  8618  6637  10132  6526];
% PP(25)=mean(b);
% pp(25)=std(b);
% % emd   
% c=[19363   19657  19605  19255  19953];
% RR(25)=mean(c);
% rr(25)=std(c);
% % %coreset0.5
% % 次数  
% a=[9  14  11  8  11];
% QQ(26)=mean(a);
% qq(26)=std(a);
% % 时间  
% b=[9095  16424  10885  7011  10554];
% PP(26)=mean(b);
% pp(26)=std(b);
% % emd  
% c=[19369  19699  19664  19637  19704];
% RR(26)=mean(c);
% rr(26)=std(c);
% % %coreset0.4
% % 次数  
% a=[10  10  8  10  11];
% QQ(27)=mean(a);
% qq(27)=std(a);
% % 时间  
% b=[9520  8513  6797  9249  9884];
% PP(27)=mean(b);
% pp(27)=std(b);
% % emd   
% c=[20166  19693  19719  19342  19384];
% RR(27)=mean(c);
% rr(27)=std(c);
% % %coreset0.3
% % 次数 
% a=[12  8  11  8   7];
% QQ(28)=mean(a);
% qq(28)=std(a);
% % 时间  
% b=[12473  6258   9084  5401  5100];
% PP(28)=mean(b);
% pp(28)=std(b);
% % emd   
% c=[19285  19645  19460  20120  19597];
% RR(28)=mean(c);
% rr(28)=std(c);
% % %coreset0.2
% % 次数  
% a=[8  11  7  8  7];
% QQ(29)=mean(a);
% qq(29)=std(a);
% % 时间 
% b=[7414  9090  5452  6737  5264];
% PP(29)=mean(b);
% pp(29)=std(b);
% % emd  
% c=[19879  19642  19720  19495  19852];
% RR(29)=mean(c);
% rr(29)=std(c);
% % %coreset0.1
% % 次数  
% a=[9  11  9  8  13];
% QQ(30)=mean(a);
% qq(30)=std(a);
% % 时间  
% b=[5381  8721  6304  5394  4842];
% PP(30)=mean(b);
% pp(30)=std(b);
% % emd   
% c=[19500  19718  19606  19445  19960];
% RR(30)=mean(c);
% rr(30)=std(c);
% % 
% % %% kmeans++uniform
% % %uniform0
% % 次数  
% a=[10  8  6  9  6];
% QQ(31)=mean(a);
% qq(31)=std(a);
% % 时间  
% b=[9731  7865  6638  10803  7890];
% PP(31)=mean(b);
% pp(31)=std(b);
% % emd   
% c=[19363  19657  19605  19255  19953];
% RR(31)=mean(c);
% rr(31)=std(c);
% % %uniform0.5
% % 次数   
% a=[6  9  12  9  9];
% QQ(32)=mean(a);
% qq(32)=std(a);
% % 时间  
% b=[4449  8222  10950  8400  10052];
% PP(32)=mean(b);
% pp(32)=std(b);
% % emd  
% c=[19779  19820  19734  19341  19891];
% RR(32)=mean(c);
% rr(32)=std(c);
% % %uniform0.4
% % 次数   
% a=[8  7  11  10  8];
% QQ(33)=mean(a);
% qq(33)=std(a);
% % 时间  
% b=[6283  5395  9686  10337  9249];
% PP(33)=mean(b);
% pp(33)=std(b);
% % emd  
% c=[19596  19687  19385  19343  19959];
% RR(33)=mean(c);
% rr(33)=std(c);
% % %uniform0.3
% % 次数  
% a=[8  8  13  9  7];
% QQ(34)=mean(a);
% qq(34)=std(a);
% % 时间  
% b=[5522  6467  10000  8589 7956];
% PP(34)=mean(b);
% pp(34)=std(b);
% % emd   
% c=[19608  19633  19759  19698   19266];
% RR(34)=mean(c);
% rr(34)=std(c);
% % %uniform0.2
% % 次数    
% a=[8  12  11  6  9];
% QQ(35)=mean(a);
% qq(35)=std(a);
% % 时间   
% b=[5437  9537  8390  4538  9179];
% PP(35)=mean(b);
% pp(35)=std(b);
% % emd   
% c=[19417  19659  20044  20043  19845];
% RR(35)=mean(c);
% rr(35)=std(c);
% % %uniform0.1
% % 次数    
% a=[10  7  8  7  10];
% QQ(36)=mean(a);
% qq(36)=std(a);
% % % 时间  
% b=[5936  5232  4860  4775  7893];
% PP(36)=mean(b);
% pp(36)=std(b);
% % emd   
% c=[19817  19827  19639   19679  20250];
% RR(36)=mean(c);
% rr(36)=std(c);

%% cifar80_k5 数据
%%coreset
% % % 次数 
% a=[11  12  13];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[15502  18322  18790];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[1.9172  1.9154  1.9197];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[10 12  15];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[12489 15277  19013];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[19180  19147  19100];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[14  12  12];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[17072  12209  13044];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[19155  19145   19162];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[12  12  10];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[11588  12585 11446];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[19107 19435  19194];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[21  20  13];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[15883  14368  11910];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[19080  19086  19174];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[51 ];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[32881 ];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[19095 ];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas--uniform
% % %uniform0
% % 次数    
% a=[11 12  13];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[15831  18759  19368];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[19187  19154  19197];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[10 13  13];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[12573 16992  16439];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[19197  19190  19192];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[10  14  10];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[10601  16193  11649];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[19151  19147  19208];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[14  18  13];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[16984  21255  14755];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[19136  19113  19135];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[9  10  12];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[9453  10808  14357];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[19204  19223  19172];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[11  15  12];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[10954  14243  11957];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[19195  19153  19136];
% RR(12)=mean(c);
% rr(12)=std(c);

%% cifar100_k10 数据
%%coreset
% % % 次数 
% a=[13  16  14];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[87572  118420  105290];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[34638  34685  34732];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[19  11  24];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[100730  68393  169260];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[34580 34639  34657];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[28  17  23];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[135290  105340  155360];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[34628   34604  34556];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[30  16  16];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[128620  86596  81444];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[34625  34598  34832];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[ ];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[ ];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[ ];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[  ];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[  ];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[  ];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas--uniform
% % %uniform0
% % 次数    
% a=[13  16  14];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[89819  118980  108110];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[34638 34685  34732];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[15  12  24];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[96547  77053  173950];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[34695  34955  34600];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[20  20  19];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[135800  132440  139420];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[34644  34620  34604];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[28  13  22];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[187260  81331  159280];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[34617  34758  34614];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[22  18  16];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[146050  120110  113560];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[34492  34569  34668];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[15  13  17];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[73727  68848  110350];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[34611  34714  34611];
% RR(12)=mean(c);
% rr(12)=std(c);


% center=zeros(20,2);
% train_x1=zeros(20000,1);
% W=zeros(30,20000);
% W(1:30,1:20000)=1/30;
% data=zeros(30,2,20000);
% for i=1:20
%      center(i,:)=randi([0 100],1,2);
%      [X,Y]=DrawPoint(center(i,1),center(i,2),2,1000);
%      train_x1((i-1)*1000+1:i*1000,1)=i;
%      
%      for j=1:1000
%          disp([i,j]);
%          [x,y]=DrawPoint(X(1,j),Y(1,j),0.5,30);
%          data(:,1,(i-1)*1000+j)=x;
%          data(:,2,(i-1)*1000+j)=y;
%      end
% end
%  save('data_synthetic30','data','train_x1','W');

 %% cc usps数据k40
% %  kmeans
%  %coreset 0
% a=[12 7 7 10 8 9 9 11 7 8];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[64357 39873 35709 48476 41751 47392 39955 53875 40375 39406];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[43858 43433 43853 44290 43234 43981 43079 42995 43636 44523];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[9 11  9 12 19 12 18 10 10 9];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[21500 35737 22316 31986 53507 30594 53095 30117 28905 26145];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[43161  43894 44457 43872 43134 44151 43318 43001 44292 44044];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[10 12 9 10 14 7 12 10 15 18];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[22200 27313 19167 21707 27714 15173 29800 23749 34964 40044];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[43879 42884 43824 43729 43269 43534 42975 44403 43937 43372];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[9 16 7 12 12 12 20 8 12 7];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[15401 28375 12369 20419 24372 24411 39620 14869 22443 13434];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[43397 43120 46163 43451 43598 43200 42931 43611 43452 44349];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[9 15 14 12 11 13 9 12 8 18];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[11669 20227 20412 16443 15531 17597 12399 16479 10622 24787];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[44294 44402 43452 43460 44159 43573 43277 44670 45182 43906];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[16 16 15 7 5 9 21 19 10 9];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[14361 14210 13335 6284 4313 8037 18105 17303 8912 8011];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[43577 43860 43554 44998 46398 44260 44296 43499 44961 45139];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas uniform
% % %uniform0
% % 次数    
% a=[12 11 7 9 19 11 7 7 8 14];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[59603 59500 31358 44946 97114 45550 37541 32118 36265 75674];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[42816 43594 42986 42862 43771 43541 43374 44601 43023 42991];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[9 14 11 9 7 9 6 11 8 12];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[22970 35331 26691 19657 16922 25990 17460 30756 21210 30980];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[44551 43650 42850 43290 43965 43234 43154 43229 42898 43372];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[10 9 9 9 9 10 11 14 8 9];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[21444 18295 17342 17194 19568 23226 26289 32057 19610 19329];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[43613 43867 43887 44188 43173 43110 43475 43387 43746 43627];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[10 14 11 8 8 9 10 16 12 17];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[16439 21830 16739 14182 13863 16038 18273 27175 20560 29237];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[42882 42821 43695 43974 43735 43347 43358 43006 43764 42827];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[13 9 6 10 13 9 10 15 7 13];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[17477 11903 8136 14068 17873 11668 13331 18740 9129 16593];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[43005 43293 44266 43389 43190 43433 43631 43655 42930 43455];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[7 7 16 14 9 7 7 17 10 8];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[6015 5866 13556 11825 7528 5780 5752 14101 8657 6504];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[45154 44872 43442 43456 43681 44018 44698 43927 43998 43887];
% RR(12)=mean(c);
% rr(12)=std(c);
% 
% %kmeans++
% %coreset0
% % 次数   
% a=[9 6 11 9 8 11 8 6 8 11];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[54973 38199 57131 47273 50492 32208 40498 39704 44021 45383];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[43340 43693 44102 43339 43454 43446 43259 43284 43206 43757];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %coreset0.5
% % 次数
% a=[8 16 7 17 12 7 7 9 11 11];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  
% b=[21540 46141 18921 45916 35362 20078 18957 24334 33466 35037];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[44016 44276 43770 43069 43239 44390 43686 43299 43089 43280];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %coreset0.4
% % 次数
% a=[11 17 12 19 11 11 12 8 11 13];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间  
% b=[26261 43042 26741 45548 26591 26097 26486 19104 28002 33154];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[43083 43107 43196 43345 43523 43873 44137 44291 43237 43380];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %coreset0.3
% % 次数
% a=[9 16 10 16 9 13 11 12 7 16];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[17564 30473 19501 28241 17196 23828 20945 24924 15789 32751];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd 
% c=[44072 43089 43870 43244 44541 43396 43592 43787 44769 43493];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %coreset0.2
% % 次数 
% a=[8 9 13 13 6 8 10 21 9 10];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间  
% b=[12914 13858 18806 18596 10060 12398 16747 31614 14732 16043];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[44770 44564 43629 43751 45597 44046 43739 43642 44359 44037];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %coreset0.1
% % 次数 
% a=[16 16 6 10 8 7 15 22 12 8];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间  
% b=[15557 16286 8060 11664 9486 82692 15225 22020 12669 9566];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd   
% c=[43924 44809 45011 45313 45059 45386 44375 43806 43809 45585];
% RR(18)=mean(c);
% rr(18)=std(c);
% %%kmeans++ uniform
% %uniform0
% % 次数 
% a=[9 6 11 9 8 11 8 6 8 11];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[47479 32807 58573 39694 40727 56030 37677 37068 43746 67197];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[43340 43693 44102 43339 43454 43446 43259 43284 43206 43757];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %uniform0.5
% % 次数  
% a=[9 9 7 8 10 12 9 9 9 10];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[27491 24341 19507 23417 32936 30927 26916 28383 25664 28632];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[43280 43453 44541 43519 44138 43596 42998 43235 43437 43490];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %uniform0.4
% % 次数 
% a=[10 12 20 11 9 9 12 14 12 10];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间 
% b=[22697 32581 43053 25085 25135 22590 27496 33310 28990 23010];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[43211 44345 43311 43055 44093 43440 43252 43131 43198 43345];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %uniform0.3
% a=[10 19 14 11 10 10 12 12 13 11];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[20406 35296 27312 25966 21723 19518 23717 25771 23330 22218];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd 
% c=[43071 43235 43355 43519 43615 43571 43201 43175 43716 43310];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %coreset0.2
% % 次数 
% a=[10 9 13 11 10 10 9 13 15 11];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间  
% b=[15129 12809 18006 15475 14751 14953 14229 18293 19891 15527];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[43388 43274 43898 43807 43547 43557 43087 43892 43714 43383];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %coreset0.1
% % 次数 
% a=[14 11 18 8 15 8 9 12 10 8];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间  
% b=[13873 11590 17732 8397 13700 8341 9514 12227 10354 7974];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd   
% c=[43390 43400 43557 43790 43781 44808 43924 43223 44525 43914];
% RR(24)=mean(c);
% rr(24)=std(c);

%% bb syn数据k40
 %kmeans++
 %coreset 0
% a=[2 2 2 2 2 2 2 2 2 2];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[15323 14963 17269 16943 17038 21652 21674 22253 21945 22801];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[40864 40864 41188 40862 40873 40999 40837 40837 40837 40837];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[2 2 ];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[10739 13825 ];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[112190 ];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[10 12 9 10 14 7 12 10 15 18];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[22200 27313 19167 21707 27714 15173 29800 23749 34964 40044];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[43879 42884 43824 43729 43269 43534 42975 44403 43937 43372];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[9 16 7 12 12 12 20 8 12 7];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[15401 28375 12369 20419 24372 24411 39620 14869 22443 13434];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[43397 43120 46163 43451 43598 43200 42931 43611 43452 44349];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[9 15 14 12 11 13 9 12 8 18];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[11669 20227 20412 16443 15531 17597 12399 16479 10622 24787];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[44294 44402 43452 43460 44159 43573 43277 44670 45182 43906];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[16 16 15 7 5 9 21 19 10 9];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[14361 14210 13335 6284 4313 8037 18105 17303 8912 8011];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[43577 43860 43554 44998 46398 44260 44296 43499 44961 45139];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas uniform
% % %uniform0
% % 次数    
% a=[ ];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[ ];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[ ];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[9 14 11 9 7 9 6 11 8 12];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[22970 35331 26691 19657 16922 25990 17460 30756 21210 30983];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[44551 43650 42850 43290 43965 43234 43154 43229 42898 43372];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[10 9 9 9 9 10 11 14 8 9];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[21444 18295 17342 17194 19568 23226 26289 32057 19610 19329];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[43613 43867 43887 44188 43173 43110 43475 43387 43746 43627];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[10 14 11 8 8 9 10 16 12 17];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[16439 21830 16739 14182 13863 16038 18273 27175 20560 29237];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[42882 42821 43695 43974 43735 43347 43358 43006 43764 42827];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[13 9 6 10 13 9 10 15 7 13];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[17477 11903 8136 14068 17873 11668 13331 18740 9129 16593];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[43005 43293 44266 43389 43190 43433 43631 43655 42930 43455];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[7 7 16 14 9 7 7 17 10 8];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[6015 5866 13556 11825 7528 5780 5752 14101 8657 6504];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[45154 44872 43442 43456 43681 44018 44698 43927 43998 43887];
% RR(12)=mean(c);
% rr(12)=std(c);

%kmeans++
% %coreset0
% % 次数   
% a=[9 6 11 9 8 11 8 6 8 11];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[54973 30765 57131 47273 45310 51038 43483 29453 40160 63218];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[43340 43693 44102 43339 43454 43446 43259 43284 43206 43757];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %coreset0.5
% % 次数
% a=[8 16 7 17 12 7 7 9 11 11];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  
% b=[21540 46141 18921 45916 35362 20078 18957 24334 33466 35037];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[44016 44276 43770 43069 43239 44390 43686 43299 43089 43280];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %coreset0.4
% % 次数
% a=[11 17 12 19 11 11 12 8 11 13];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间  
% b=[26261 43042 26741 45548 26591 26097 26486 19104 28002 33154];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[43083 43107 43196 43345 43523 43873 44137 44291 43237 43380];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %coreset0.3
% % 次数
% a=[9 16 10 16 9 13 11 12 7 16];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[17564 30473 19501 28241 17196 23828 20945 24924 15789 32751];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd 
% c=[44072 43089 43870 43244 44541 43396 43592 43787 44769 43493];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %coreset0.2
% % 次数 
% a=[8 9 13 13 6 8 10 21 9 10];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间  
% b=[12914 13858 18806 18596 10060 12398 16747 31614 14732 16043];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[44770 44564 43629 43751 45597 44046 43937 43642 44359 44037];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %coreset0.1
% % 次数 
% a=[16 16 6 10 8 7 15 22 12 8];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间  
% b=[15557 16286 8060 11664 9486 8269 15225 22020 12669 9566];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd   
% c=[43924 44809 45011 45313 45059 45386 44375 43806 43809 45585];
% RR(18)=mean(c);
% rr(18)=std(c);
% %%kmeans++ uniform
% %uniform0
% % 次数 
% a=[9 6 11 9 8 11 8 6 8 11];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[47479 32807 58573 39694 40727 56030 37677 37068 43746 67197];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[43340 43693 44102 43339 43454 43446 43259 43284 43206 43757];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %uniform0.5
% % 次数  
% a=[10 9 9 7 8 10 12 9 9 9];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[28632 27491 24341 19507 23417 32936 30927 26916 28383 25664];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[43490 43280 43453 44541 43519 44138 43596 42998 43235 43437];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %uniform0.4
% % 次数 
% a=[10 12 20 11 9 9 12 14 12 10];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间 
% b=[22697 32581 43053 25085 25135 22590 27496 33310 28990 23010];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[43211 44345 43311 43055 44093 43440 43252 43131 43198 43345];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %uniform0.3
% a=[10 19 14 11 10 10 12 12 13 11];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[20406 35296 27312 25966 21723 19518 23717 25771 23330 22218];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd 
% c=[43071 43235 43355 43519 43615 43571 43201 43175 43716 43310];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %coreset0.2
% % 次数 
% a=[10 9 13 11 10 10 9 13 15 11];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间  
% b=[15129 12809 18006 15475 14751 14953 14229 18293 19891 15227];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[43388 43274 43898 43807 43547 43557 43087 43892 43714 43383];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %coreset0.1
% % 次数 
% a=[14 11 18 8 15 8 9 12 10 8];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间  
% b=[13873 11590 17732 8397 13700 8341 9514 12227 10354 7974];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd   
% c=[43390 43400 43557 43790 43781 44808 43924 43223 44525 43914];
% RR(24)=mean(c);
% rr(24)=std(c);

%% aa1 minist数据k40
%  %kmeans
%  %coreset 0
% a=[5 5 8 7 6 8 11 6 9 11];
% QQ(1)=mean(a);
% qq(1)=std(a);
% % 时间 
% b=[22928 20250 31296 37505 27544 40883 57354 30841 45219 47282];
% PP(1)=mean(b);
% pp(1)=std(b);
% % emd  
% c=[18847 18572 18899 18496 18651 18325 18658 18460 18794 18783];
% RR(1)=mean(c);
% rr(1)=std(c);
% % %coreset0.5
% % 次数   
% a=[9 13 5 12 19 7 6 11 16 14];
% QQ(2)=mean(a);
% qq(2)=std(a);
% % 时间  
% b=[17387  24867 8892 19473 20044 14889 14366 21940 34899 34553];
% PP(2)=mean(b);
% pp(2)=std(b);
% % emd    
% c=[18451 18243 19377 18971 18246 19052 18510 18566 18843 18255];
% RR(2)=mean(c);
% rr(2)=std(c);
% % %coreset0.4
% % 次数   
% a=[16 7 13 9 19 16 7 8 28 19];
% QQ(3)=mean(a);
% qq(3)=std(a);
% % 时间  
% b=[23997 11663 19269 13440 30560 27670 13275 14351 53742 21594];
% PP(3)=mean(b);
% pp(3)=std(b);
% % emd  
% c=[18799 18560 18700 18761 18707 18427 18209 19499 18475 19237 ];
% RR(3)=mean(c);
% rr(3)=std(c);
% % %coreset0.3
% % 次数  
% a=[10 14 8 11 8 6 19 14 10 21];
% QQ(4)=mean(a);
% qq(4)=std(a);
% % 时间   
% b=[11297 18436 9765 12616 8911 6293 25017 19601 12548 27603];
% PP(4)=mean(b);
% pp(4)=std(b);
% % emd  
% c=[18393 18848 18849 18880 18892 19417 18623 18703 19089 18404];
% RR(4)=mean(c);
% rr(4)=std(c);
% % %coreset0.2
% % 次数   
% a=[12 5 8 19 17 48 26 27 21 32];
% QQ(5)=mean(a);
% qq(5)=std(a);
% % 时间  
% b=[9866 3470 6129 14412 12580 33896 24644 23240 16694 25347];
% PP(5)=mean(b);
% pp(5)=std(b);
% % emd   
% c=[18641 19074 19368 18857 18968 18447 18519 18592 18928 18921];
% RR(5)=mean(c);
% rr(5)=std(c);
% % %coreset0.1
% % 次数   
% a=[98 7 26 45 32 97 24 15 20 11];
% QQ(6)=mean(a);
% qq(6)=std(a);
% % 时间  
% b=[38187 2872 10569 16834 12492 38771 10369 6087 8146 4706];
% PP(6)=mean(b);
% pp(6)=std(b);
% % emd  
% c=[18808 19108 18641 18887 18991 18582 19194 19779 18871 18804];
% RR(6)=mean(c);
% rr(6)=std(c);
% % 
% %%kmeanas uniform
% % %uniform0
% % 次数    
% a=[5 5 8 7 6 8 11 6 9 11];
% QQ(7)=mean(a);
% qq(7)=std(a);
% % 时间  
% b=[23381 20580 32471 37923 28414 42117 59357 31632 45884 46130];
% PP(7)=mean(b);
% pp(7)=std(b);
% % emd  
% c=[18847 18572 18899 18496 18651 18325 18658 18460 18794 18783];
% RR(7)=mean(c);
% rr(7)=std(c);
% % %uniform0.5
% % 次数    
% a=[6 11 8 10 10 10 8 8 10 7];
% QQ(8)=mean(a);
% qq(8)=std(a);
% % 时间  
% b=[11521 21890 16431 19983 24269 23708 19326 17835 27300 18133];
% PP(8)=mean(b);
% pp(8)=std(b);
% % emd   
% c=[19043 18665 18770 18530 18650 18869 19046 18499 18288 18500];
% RR(8)=mean(c);
% rr(8)=std(c);
% % %uniform0.4
% % 次数   
% a=[9 6 5 14 9 9 8 7 5 15];
% QQ(9)=mean(a);
% qq(9)=std(a);
% % 时间 
% b=[15444 8839 7903 23464 13766 17883 17013 13384 9916 26153];
% PP(9)=mean(b);
% pp(9)=std(b);
% % emd  
% c=[18314 18830 18285 18978 18600 18523 18778 18203 18755 18297];
% RR(9)=mean(c);
% rr(9)=std(c);
% % %uniform0.3
% % 次数   
% a=[6 5 7 11 7 7 10 5 6 8];
% QQ(10)=mean(a);
% qq(10)=std(a);
% % 时间 
% b=[6991 5511 7953 13334 8028 8249 10670 5089 6474 11074];
% PP(10)=mean(b);
% pp(10)=std(b);
% % emd  
% c=[18861 18539 18574 18303 18659 18786 18547 18527 18300 18636];
% RR(10)=mean(c);
% rr(10)=std(c);
% % %uniform0.2
% % 次数  
% a=[7 10 12 9 8 8 9 8 8 9];
% QQ(11)=mean(a);
% qq(11)=std(a);
% % 时间 
% b=[5685 7407 9167 6730 6129 6319 6823 6187 6112 6710];
% PP(11)=mean(b);
% pp(11)=std(b);
% % emd  
% c=[18928 18521 19028 18481 18388 18902 18496 18512 18448 19400];
% RR(11)=mean(c);
% rr(11)=std(c);
% % %uniform0.1
% % 次数  
% a=[10 6 14 6 9 12 11 12 8 7];
% QQ(12)=mean(a);
% qq(12)=std(a);
% % 时间 
% b=[3591 2320 5297 2357 3225 4279 3871 4335 2792 2805];
% PP(12)=mean(b);
% pp(12)=std(b);
% % emd  
% c=[19021 19118 18546 18844 19282 18716 19186 18559 18789 19155];
% RR(12)=mean(c);
% rr(12)=std(c);
% 
% % kmeans++
% %coreset0
% % 次数   
% a=[8 6 8 9 9 7 7 6 6 5];
% QQ(13)=mean(a);
% qq(13)=std(a);
% % 时间  
% b=[33369 21900 39276 42188 48522 38942 40492 28853 31051 22509];
% PP(13)=mean(b);
% pp(13)=std(b);
% % emd  
% c=[19076 18432 18967 18700 18932 18454 19013 19049 19002 18843];
% RR(13)=mean(c);
% rr(13)=std(c);
% % %coreset0.5
% % 次数
% a=[10 6 8 7 12 11 7 15 9 13];
% QQ(14)=mean(a);
% qq(14)=std(a);
% % 时间  
% b=[22016 13409 16310 13809 29198 26555 15387 36830 21762 33223];
% PP(14)=mean(b);
% pp(14)=std(b);
% % emd  
% c=[18944 19374 19028 18797 18737 18866 19226 19009 18842 18751];
% RR(14)=mean(c);
% rr(14)=std(c);
% % %coreset0.4
% % 次数
% a=[8 9 13 17 9 15 4 8 6 13];
% QQ(15)=mean(a);
% qq(15)=std(a);
% % 时间  
% b=[13426 12952 19815 23723 15645 28038 6358 13816 10101 20336];
% PP(15)=mean(b);
% pp(15)=std(b);
% % emd  
% c=[18618 18925 18516 18666 18588 18730 19184 19410 18914 18465];
% RR(15)=mean(c);
% rr(15)=std(c);
% % %coreset0.3
% % 次数
% a=[11 9 13 6 11 6 15 10 8 7];
% QQ(16)=mean(a);
% qq(16)=std(a);
% % 时间 
% b=[12753 10255 14393 6696 11866 6777 16473 14564 11496 9570];
% PP(16)=mean(b);
% pp(16)=std(b);
% % emd 
% c=[19473 19060 18513 19323 18494 19218 18801 18784 19093 18858];
% RR(16)=mean(c);
% rr(16)=std(c);
% % %coreset0.2
% % 次数 
% a=[6 10 8 8 26 11 10 4 4 5];
% QQ(17)=mean(a);
% qq(17)=std(a);
% % 时间  
% b=[5139 9278 7207 6485 20844 8122 8256 3473 3375 4267];
% PP(17)=mean(b);
% pp(17)=std(b);
% % emd  
% c=[19297 19118 19108 18930 18547 18957 19161 19676 20638 20346];
% RR(17)=mean(c);
% rr(17)=std(c);
% % %coreset0.1
% % 次数 
% a=[24 22 42 13 20 6 11 43 7 45];
% QQ(18)=mean(a);
% qq(18)=std(a);
% % 时间  
% b=[9552 8696 15640 5146 7486 2475 4267 15840 2682 16395];
% PP(18)=mean(b);
% pp(18)=std(b);
% % emd   
% c=[19043 19669 18931 19027 18685 19933 19108 19232 19517 18881];
% RR(18)=mean(c);
% rr(18)=std(c);
% %%kmeans++ uniform
% %uniform0
% % 次数 
% a=[8 7 7 5 9 10 7 8 7 5];
% QQ(19)=mean(a);
% qq(19)=std(a);
% % 时间  
% b=[34864 29754 39609 24929 53052 56821 38511 43526 32795 22831];
% PP(19)=mean(b);
% pp(19)=std(b);
% % emd  
% c=[18920 19073 18430 18512 18758 18353 19071 19116 19087 18460];
% RR(19)=mean(c);
% rr(19)=std(c);
% % %uniform0.5
% % 次数  
% a=[7 8 11 7 6 7 8 9 6 8];
% QQ(20)=mean(a);
% qq(20)=std(a);
% % 时间  
% b=[15089 18431 21222 12510 12406 17703 18589 19524 13673 19249];
% PP(20)=mean(b);
% pp(20)=std(b);
% % emd  
% c=[19116 19014 18815 19031 19102 18496 19034 18549 18472 18941];
% RR(20)=mean(c);
% rr(20)=std(c);
% % %uniform0.4
% % 次数 
% a=[9 7 8 5 6 7 8 13 11 5];
% QQ(21)=mean(a);
% qq(21)=std(a);
% % 时间 
% b=[15913 10493 14007 7188 10348 11488 15638 27131 19782 11033];
% PP(21)=mean(b);
% pp(21)=std(b);
% % emd  
% c=[19374 19131 19026 19223 18629 18900 18567 18873 18451 19055];
% RR(21)=mean(c);
% rr(21)=std(c);
% % %uniform0.3
% a=[8 15 9 8 9 8 12 11 9 13];
% QQ(22)=mean(a);
% qq(22)=std(a);
% % 时间 
% b=[10686 18208 11550 9036 10454 8589 15943 16059 13203 13203 16847];
% PP(22)=mean(b);
% pp(22)=std(b);
% % emd 
% c=[18513 18770 19400 18413 18492 18501 18767 18668 18776 18776 18723];
% RR(22)=mean(c);
% rr(22)=std(c);
% % %uniform0.2
% % 次数 
% a=[15 21 8 9 13 8 11 7 8 15];
% QQ(23)=mean(a);
% qq(23)=std(a);
% % 时间  
% b=[11901 16127 6614 7383 10076 6105 7791 4891 5634 13413];
% PP(23)=mean(b);
% pp(23)=std(b);
% % emd  
% c=[18416 18786 19163 18892 18447 18916 19133 19186 18882 18457];
% RR(23)=mean(c);
% rr(23)=std(c);
% % %coreset0.1
% % 次数 
% a=[19 8 10 14 8 10 6 27 16 9];
% QQ(24)=mean(a);
% qq(24)=std(a);
% % 时间  
% b=[7133 3548 4003 5690 3251 4013 25062 10670 6533 3277];
% PP(24)=mean(b);
% pp(24)=std(b);
% % emd   
% c=[18785 18995 19074 18921 18624 19629 18830 18652 18973 19446];
% RR(24)=mean(c);
% rr(24)=std(c);

%% aa1 minist network 0 ->0.1
% load('aa1ministk5networkcoreset0uniform0.1');
%mean(c,2);
%std(c,0,2);
%% bb5 syn sinkhorn 0 ->0.1
% save('bb5synk20sinkhorncoreset0uniform0.1.mat','a','b','c');
%% 数据
%    time=0;
% time=time+1;
% ti=12;
% a(ti,time)=times;
% b(ti,time)=t1;
% c(ti,time)=DD;
% a=a(:,1:10);
% b=b(:,1:10);
% c=c(:,1:10);