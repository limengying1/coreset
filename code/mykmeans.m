%带权重的k-means

%mykmeans(data,W,60)
function [y,IDX,sumDist] = mykmeans(X,W,k) 
%X is a matrix(m by n) ???????????????? W??????????? k????????? 
 
    [m,n] = size(X); 
    Xmax = zeros(n,1); 
    Xmin = zeros(n,1); 
    IDX = zeros(m,1); 
    dist = zeros(m,k); 
    distmin = zeros(m,1); 
     
     
    for i=1:n 
        Xmax(i) = max(X(:,i)); 
        Xmin(i) = min(X(:,i)); 
    end 
     
    y = zeros(k,n); 
    for i=1:n 
        y(:,i) = Xmin(i)+rand(k,1)*(Xmax(i)-Xmin(i)); 
    end 
     
    yo = zeros(k,n); 
     
    iter =0; 
    while norm(y-yo)/k>10^-3 && iter<200 
        count = zeros(k,1); 
        sumu = zeros(k,n); 
        sumdist = zeros(k,1); 
        yo = y; 
        for i=1:m 
            for j=1:k 
                dist(i,j) = norm(X(i,:)-yo(j,:)); 
            end 
            [distmin(i),IDX(i)] = min(dist(i,:)); 
            IDXI = IDX(i); 
            WI = W(i); 
            sumdist(IDXI) = sumdist(IDXI) +distmin(i)*WI; 
            count(IDXI) = count(IDXI)+WI; 
            sumu(IDXI,:) = sumu(IDXI,:)+X(i,:)*WI; 
        end 
        for i = 1:k 
            y(i,:) = sumu(i,:)/(count(i)+0.1); 
        end 
         
        plot(X(IDX==1,1),X(IDX==1,2),'b.'); 
        hold on; 
        plot(X(IDX==2,1),X(IDX==2,2),'g.'); 
        plot(X(IDX==3,1),X(IDX==3,2),'c.'); 
        plot(X(IDX==4,1),X(IDX==4,2),'m.'); 
        plot(X(IDX==5,1),X(IDX==5,2),'y.'); 
        plot(X(IDX==6,1),X(IDX==6,2),'r.'); 
        plot(y(:,1),y(:,2),'kd'); 
        pause(1) 
        hold off; 
        iter = iter+1; 
    end 
    sumDist = sum(sumdist); 
end 