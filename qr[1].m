clc 
clear all
a=[1 2;3 4];
[m,n]=size(a);
q=zeros(m,n);
r=zeros(m,n);
n=1000;
while(n>0)
    [q,r]=qr(a);
    a=r*q;
    if norm(a-diag(diag(a)),'fro')<0.0000001
        break;
    end
    n=n-1;
end
diag(a)


