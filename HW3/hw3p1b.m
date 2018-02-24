A = [10 -2 -1; -2 10 -1; -1 -2 5]; b = [11; -25; 18];
l = tril(A); u = triu(A,1);
M = -inv(l)*u; g = inv(l)*b;
x = [1; -2; 3]; xk = [0; 0; 0]; xk1 = M*xk + g; tol = max(abs(xk1-xk)); k = 1;

while tol > 5*10^-3
	fprintf('%d & (%.4f,%.4f,%.4f)^\\mathrm{T} & %.4f\\\\\n', k, xk1, tol);
	xk = xk1; xk1 = M*xk + g; tol = max(abs(xk1-xk)); k = k + 1; 
end
fprintf('%d & (%.4f,%.4f,%.4f)^\\mathrm{T} & %.4f\\\\\n', k, xk1, tol);
