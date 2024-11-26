%Gauss Elimination Method
% Q) 6x1 + 2x2 + 8x3 = 26
%    3x1 + 5x2 + 2x3 = 8
%    0x1 + 8x2 + 2x3 = -7
clc
clear all;
A = [6,2,8,26; 3,5,2,8 ; 0,8,2,-7 ];
n = 3;                  %No. of Unknowns 
for j = 1 : n-1         %Column
     for i = j+1 : n    %Pairing
         A(i,:) = A(i,:) - [A(i,j)/(A(j,j))]*A(j,:);
     end
end
X(n) = A(n,n+1)/A(n,n)  ;
for i = n-1:-1:1 
    sum = 0 ; 
    for j = i+1 : n
        sum = sum + A(i,j)*X(j);
    end
    X(i) = (A(i,n+1) - sum)/(A(i,i))  ;
end
disp(X);
