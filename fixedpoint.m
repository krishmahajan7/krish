x0 = input("Enter initial guess: ");
tol = input("Enter tolerance: ");
g = @(x) (x*(1+x)^(1/2));
n = 50;
i = 1;
while(i <= n)
    x1 = g(x0);
    if(abs(x1-x0) < tol)
        fprintf("The root is approximately: %.6f\n", x1);
        break;
    else
        i = i + 1;
        x0 = x1;
    end
end
if(i > n)
    disp("The given equation could not converge for the given number of iterations");
end