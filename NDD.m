clc;
clear all;
p=0.43
f11=@(x) exp(x);
x=[0,0.25,0.5,0.75]
f=[1,1.64872,2.71828,4.4816]
n=length(x);
DD=zeros(n);
DD(:,1)=f
for j=2:n
    for i=j:n
        DD(i,j)=(DD(i,j-1)-DD(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
    pro=[0,0,0,0];
    for i=1:n
        pro(i)=1;
        for j=1:i-1
            pro(i)=pro(i)*(p-x(j));
        end

    end
    sum=0
    for i=1:n
        sum=sum+DD(i,i)*pro(i);
    end
    sum
   f11(0.43)