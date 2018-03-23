f = @(x) log(x) + x -1.5;
a = 1; b = 2; k = 1; tol = eps;
while abs(b-a) > tol & k <= 6
	x = (a + b)/2;
	fprintf('%d & %f & %f & %f & %f & %f & %f\\\\\n', k, a, f(a), b, f(b), x, f(x));
	if sign(f(x)) == sign(f(b))
		b = x; 
	else
		a = x;
	end
	k = k + 1; 
end
