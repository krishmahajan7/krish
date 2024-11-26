clc
clear all
% Equations are 
% 10x1 -x2 +2x3 = 6
% -x1 + 11x2 - x3 + 3x4 =25
% 2x1 - x2 + 10x3 - x4 = -11
% 3x2 -x3 + 8x4 = 15
% Define the matrix A and vector B
A = [10 , -2 , 2 , 0; 
     -1 , 11 , -1 , 3; 
      2 , -1 , 10 , -1; 
      0 , 3 , -1 , 8];
B = [6; 25; -11; 15];  % Make B a column vector

x0 = [ 0 ,0 , 0, 0];
x = [ 0, 0, 0, 0];
n = 4 ;
k = 1;

while (k < 1000)
    for i = 1:n
        sum1 = 0;
        sum2 = 0;
        for j = 1:i-1
            sum1 = sum1 + A(i, j) * x(j);
        end
        for j = i+1:n
            sum2 = sum2 + A(i, j) * x0(j);
        end
        x(i) = (1/A(i, i)) * (B(i) - (sum1 + sum2));
    end
    if (norm(x - x0, Inf) / norm(x, Inf) < 0.0001)
        break;
    end
    x0 = x;  % Update x0 to the current x values
    k = k + 1;
end
disp("Solution is ");
disp(x);
