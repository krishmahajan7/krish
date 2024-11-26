clc;
clear all;
A=[1 1 0 0 ; 1 2 0 1; 0 0 3 3 ; 0 1 2 3];
X0=[1;1;0;1];
i=1;
tol=10^-3;
X=X0;
K=0;
while i<50
    Y=A*X;
    if abs(K-max(abs(Y)))<tol
        break
    end
    K=max(abs(Y));
    X=(1/K)*Y;
    i=i+1;
end
K
X
eig(A)