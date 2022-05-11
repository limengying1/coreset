function [a] =fast_emd(A,B)
n1=size(A,2);
n2=size(B,2);
n=n1+n2;
P=[A B];
    D=distance1(P);
    D=triu(D);
    D(1:n1,1:n1)=0;
    D(n1+1:n,n1+1:n)=0;
    extra_mass_penalty=0;
    flowType=3;
    WAF=[(1/n1)*ones(n1,1);zeros(n2,1)];
    WBF=[zeros(n1,1);(1/n2)*ones(n2,1)];
    D=abs(D);
    %[a]=demo_FastEMD_compute(WAF,WBF,D,extra_mass_penalty,flowType);
    [a]=emd_hat_gd_metric_mex(WAF,WBF,D,extra_mass_penalty);
end

