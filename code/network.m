function [a] =network(A,B)
n1=size(A,2);
n2=size(B,2);

WA=ones(1,n1);
WB=ones(1,n2);
D=distance1(A',B');
a=maintest(D,WA/sum(WA),WB/sum(WB));
end

