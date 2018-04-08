f = @(x) exp(-x.^2);
for i = 0.1:0.1:1
	fprintf('%.1f & %.10f & %.10f\\\\\n', i, erf(i), 2/sqrt(pi)*quadtx(f,0,i));
end
