% MATLAB implementation of Iterative Rank Minization Algorithm (IRAM) for 
% solving nonconvex Quadratically Constrained Quadratica Programming (QCQP)
% Problems
%
% Written by Ran Dai and Chuangchuang Sun, August 2016

% Problem Formulation
% Minimize x'Q_0x
%                                                     
% Subject to x'Q_jx+c_j<=0, for j=1,...,m

% Syntax:
%
% output = irma(Q0,Incon,Eqcon,options)
%
% Inputs: Q0      - matrix of quadratic objective function 
%         Incon.Q - matrix of quadratic inequality constraints
%         Incon.c - value of quadratic inequality constraints
%         Eqcon.Q - matrix of quadratic equality constraints
%         Eqcon.c - value of quadratic equality constraints
%
%         options.w0    - initial weighting factor
%         options.wt    - coefficient of weighting factor increment
%         options.delta - stopping criteria
%         options.max   - maximum numer of iteration steps
%
% Outputs: output - structured array containing
%
%          output.x     - matrix X resulting from IRMA
%          output.Z     - vector x resulting from IRMA
%          output.rk    - r value solved at each iteration
%          output.step  - number of iteration steps
%          output.Jf    - objective value
%          output.steps - number of steps for solving IRMA
%          output.time  - cumulative computational time (in seconds) 
%          output.flag  - flag = 0, iteration counter reaches its max
%                         flag = 1, problem is solved before maximum steps
%
% Additional information:
%
% http://www.aere.iastate.edu/ dairan/pmwiki/Main/Software
%
% Please email: dairan@iastate.edu for any questions

function output = cvx0(Q0,Incon,Eqcon,options)

%Initialization
if nargin < 3
    error('At least three input arguments are required.')
elseif nargin == 3
    options.w0 = 1;
    options.wt = 1.5;
    options.delta = 1e-4;
    options.max = 200;
elseif nargin > 4
    error('Too many input arguments.')
end

% Find size of the objective matrix
[nVar, mVar] = size(Q0);
if nVar ~= mVar
    error('Objective matrix should be a square matrix!')
end

% Initialize flag value
output.flag = 0;

% Initialize the weighting factor
w = 1;% options.w0*options.wt;

% Find number of inequality and equality constraints
nIncon = length(Incon);
nEqcon = length(Eqcon);

% Start Timer
tic

% Find X from semidefinite relaxiation
cvx_solver sedumi;

cvx_begin

% Define size of the unknown matrix
variable X(nVar,nVar);

% Define cost function
minimize (trace(Q0*X));
% Define equality and inequality quadratic constraints
subject to
for j=1:nIncon
%     disp(size(X))
%     disp(size(Incon(j).Q))
    trace(Incon(j).Q*X) + Incon(j).c <= 0;
end

% for j=1:nEqcon
%     trace(Eqcon(j).Q*X) + Eqcon(j).c == 0;
% end

% The unknown matrix 'X' is relaxed as a semidefinite maxtrix
X == semidefinite(nVar);

cvx_end
disp(X);
% Find eigenvectors of X and use 'EVi' in the first iteration of IRMA
[EV,~] = eig(X);
EVi = EV;
clear X


% Start the iterative rank minimization loop
for kk=1:options.max
    w = w*options.wt;
    cvx_solver sedumi;
    cvx_begin
    variable X(nVar,nVar);
    variable r nonnegative;
    
    % Minimize the original cost function and penalty term 'w*r'
    % representing weighted second largest eigenvalue of 'X'
    minimize (trace(Q0*X) + w*r);
    
    % Define equality and inequality quadratic constraints
    subject to
    for j=1:nIncon
        trace(Incon(j).Q*X) + Incon(j).c <= 0;
    end
    
    for j=1:nEqcon
        trace(Eqcon(j).Q*X) + Eqcon(j).c == 0;
    end
    
    
    % X is constrained to be a positive semidefinite matrix
    X == semidefinite(nVar);
    
    % Semidefinite constraint on second largested eigenvalue of 'X'
    r*eye(nVar-1) - EVi(:,1:nVar-1)'*X*EVi(:,1:nVar-1) == semidefinite(nVar-1);
    
    cvx_end
    
    % Record r value obtained at each step
    rk(kk) = r;
      
    % Find corresponding eigenvectors at each iteration step
    [EVi,~] = eig(X);
    
    % Print out iteration index, objective value, weighting factor and r at
    % current step
    fprintf('kk=%d,trace(Q0*X) = %f,w = %f,r = %f\n',kk,trace(Q0*X),w,r);
    
    % When 'r' which represents the second largest eigenvlue of 'X' is
    % significantly small, we assume the unknown matrix 'X' is a rank one
    % matrix and the stopping criteria is satisfied
    if r<options.delta
        output.flag = 1;
        break;
    end
    
    if kk<options.max
        clear X r
    end
end

% Find the computation time
output.time = toc;

% Find the solution from IRMA according to
% x=sqrt(\lambda_max)*eigenvactor_max
[EVf,EVa] = eig(X);
output.x = sqrt(max(max(EVa)))*EVf(:,end);

% Output objective value
output.Jf = trace(Q0*X);

% Output number of iteration steps
output.step = kk;

% Output 'r' at each iteration step
output.r = rk;

end