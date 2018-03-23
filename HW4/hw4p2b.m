f = @(x) x^6 - x - 1; f1 = @(x) 6*x^5 - 1; a = 1; b = 2; k = 0; tol = 10; x0 = 1.5;
while tol > 10^-9
    x = x0 - f(x0)/f1(x0); tol = abs(x-x0); x0 = x; k = k + 1;
    fprintf('%d & %.10f & %.10f & %.10f\\\\\n',k,x,f(x),tol);
end
