function output = test(Q1,Q2,P,k,delta)

H = 3;
V = 1;
u_max = 0.2;
disp(k);
n=2*k+1;
Q0 = zeros(n,n); %minimize( (x2-x1)^2+(y2-y1)^2 )
disp(n);
for i=0:k-1
    Q0(2*i+1,2*i+1) = 1;
    Q0(2*i+1,n) = -P(i+1,1);
    Q0(n,2*i+1) = -P(i+1,1);
    Q0(2*i+2,2*i+2) = 1;
    Q0(2*i+2,n) = -P(i+1,2);
    Q0(n,2*i+2) = -P(i+1,2);
end
disp(Q0);
% Q0(4,4) = 1;
% Q0(4,5) = -1;
% Q0(5,4) = -1;
% Q0(5,5) = 1;
Eqcon(1).Q = zeros(n,n); %¦Á^2=1 
Eqcon(1).Q(n,n)=1;
% Eqcon(1).Q(7,7) = 1;
Eqcon(1).c =-1;

% 
% Eqcon(2).Q = zeros(7,7);    %(x2-x1)^2+(y2-y1)^2 = (x3-x2)^2+(y3-y2)^2
% Eqcon(2).Q(1,1) = 1;
% Eqcon(2).Q(1,2) = -1;
% Eqcon(2).Q(2,1) = -1;
% Eqcon(2).Q(2,3) = 1;
% Eqcon(2).Q(3,2) = 1;
% Eqcon(2).Q(3,3) = -1;
% Eqcon(2).Q(4,4) = 1;
% Eqcon(2).Q(4,5) = -1;
% Eqcon(2).Q(5,4) = -1;
% Eqcon(2).Q(5,6) = 1;
% Eqcon(2).Q(6,5) = 1;
% Eqcon(2).Q(6,6) = -1;
% Eqcon(2).c = 0;

%define inequality constraints

Incon(1).Q  = zeros(n,n); 
for i=0:k-1
    Incon(1).Q(2*i+1,2*i+1) = 1;
    Incon(1).Q(2*i+1,n) = -Q1(i+1,1);
    Incon(1).Q(n,2*i+1) = -Q1(i+1,1);
    Incon(1).Q(2*i+2,2*i+2) = 1;
    Incon(1).Q(2*i+2,n) = -Q1(i+1,2);
    Incon(1).Q(n,2*i+2) = -Q1(i+1,2);
end
num1=0;
for i=1:k
    num1=num1+Q1(i,1)^2+Q1(i,2)^2;
end
Incon(1).c = num1-delta;
disp(size(Incon(1).Q));

Incon(2).Q  = zeros(n,n); 
for i=0:k-1
    Incon(2).Q(2*i+1,2*i+1) = 1;
    Incon(2).Q(2*i+1,n) = -Q2(i+1,1);
    Incon(2).Q(n,2*i+1) = -Q2(i+1,1);
    Incon(2).Q(2*i+2,2*i+2) = 1;
    Incon(2).Q(2*i+2,n) = -Q2(i+1,2);
    Incon(2).Q(n,2*i+2) = -Q2(i+1,2);
end
num2=0;
for i=1:k
    num2=num2+Q2(i,1)^2+Q2(i,2)^2;
end
Incon(2).c = num2-delta;
disp(size(Incon(2).Q));
% Incon(2).Q = zeros(7,7); %x1<=0
% Incon(2).Q(7,1) = 0.5;
% Incon(2).Q(1,7) = 0.5;
% Incon(2).c = 0;
% 
% Incon(3).Q = zeros(7,7); %-x2<=0
% Incon(3).Q(7,2) = -0.5;
% Incon(3).Q(2,7) = -0.5;
% Incon(3).c = 0;
% 
% Incon(4).Q = zeros(7,7); %x2-10<=0
% Incon(4).Q(7,2) = 0.5;
% Incon(4).Q(2,7) = 0.5;
% Incon(4).c = -10;
% 
% Incon(5).Q = zeros(7,7); %-x3+10<=0
% Incon(5).Q(7,3) = -0.5;
% Incon(5).Q(3,7) = -0.5;
% Incon(5).c = 10;
% 
% Incon(6).Q = zeros(7,7); %x3-10<=0
% Incon(6).Q(7,3) = 0.5;
% Incon(6).Q(3,7) = 0.5;
% Incon(6).c = -10;
% 
% Incon(7).Q = zeros(7,7); %-y1<=0
% Incon(7).Q(7,4) = -0.5;
% Incon(7).Q(4,7) = -0.5;
% Incon(7).c = 0;
% 
% Incon(8).Q = zeros(7,7); %y1<=0
% Incon(8).Q(7,4) = 0.5;
% Incon(8).Q(4,7) = 0.5;
% Incon(8).c = 0;
% 
% Incon(9).Q = zeros(7,7); %-y2<=0
% Incon(9).Q(7,5) = -0.5;
% Incon(9).Q(5,7) = -0.5;
% Incon(9).c = 0;
% 
% Incon(10).Q = zeros(7,7); %y2-12<=0
% Incon(10).Q(7,5) = 0.5;
% Incon(10).Q(5,7) = 0.5;
% Incon(10).c = -12;
% 
% Incon(11).Q = zeros(7,7); %-y3+10<=0
% Incon(11).Q(7,6) = -0.5;
% Incon(11).Q(6,7) = -0.5;
% Incon(11).c = 10;
% 
% Incon(12).Q = zeros(7,7); %y2-10<=0
% Incon(12).Q(7,6) = 0.5;
% Incon(12).Q(6,7) = 0.5;
% Incon(12).c = -10;

output = cvx0(Q0,Incon,Eqcon);
end
