f = @(x) x^6 - x - 1; a = 1; b = 2; k = 0; tol = 10; x0 = b;
while tol > 10^-3
	x = (a + b)/2; tol = abs(x - x0); x0 = x; k = k + 1; 
	fprintf('%d & %f & %f & %f & %f & %f & %f & %f\\\\\n',k,a,f(a),b,f(b),x,f(x),tol);
	if sign(f(x)) == sign(f(b)) b = x; else a = x; end
end
