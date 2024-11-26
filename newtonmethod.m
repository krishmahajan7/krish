clc;
clear all;
x = input("Enter the guess value");
f= @(x) 2^x -5*x +2;
tol = 0.0001;
f1= @(x) log(2)*(2^x) -5;
n = 100;
i = 1;
while i<n 
    if f1(x)~=0
        x1 = x-(f(x)/f1(x));
        if abs(x1-x)<tol
           break;
        else
           x = x1;
        end
    else
        fprintf("Newton's Method has failed");
    end
    i = i+1;
end

fprintf("The Root was found at %f and number of iterations are %f",x,i);

