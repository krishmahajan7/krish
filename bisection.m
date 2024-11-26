clc
clear all
a=input('enter a')
b=input('enter b')
tol=1e-3;
f=@(x)x^3+4*x^2-10;
if f(a)*f(b)>0
    disp('Invalid input')
else
    
    while abs(b-a)>tol
        c=(a+b)/2;
     if f(a)*f(c)>0
            a=c;
    else
        b=c;
    end
    end
    fprintf('The ans is %f',c)
end
