clc;
clear all;
x=[-2 -1 0 1 2];
y=[15 1 1 3 19];
A=sum(x);
Z=x.*y
W=x.*x
B=sum(Z)
C=sum(W)
 %linear
 a=[length(x) A;A C]
 b=[sum(y);B]
 X=inv(a)*b
 Y=X(1)+X(2).*x
 plot(x,y,'b')
 hold on
 plot(x,Y,'r')