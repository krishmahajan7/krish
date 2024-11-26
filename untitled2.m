clc
clear all 
x0=input("Enter the value of x0 : ");
tol=input("Enter the value of tolerance : ");
n=input("Enter the number of iterations :");
f=@(x)x^2-17;
f1=@(x)2*x;
i=1;
while (i<n);
    if f1(x0)~=0
           for i=1:n
               x1=x0-f(x0)/f(x0);
               if abs(x1-x0)<tol
                   disp(x1)
                   break;
               else 
                   x0=x1;
               end
           end
    else
           fprintf("Newton's theorem is invalid ");
    end
end
