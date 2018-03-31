syms a b; xi = 1:0.4:2.6; yi = [0.931, 0.473, 0.297, 0.224, 0.618]; Yi = 1./yi;
eqs = [length(xi)*a + sum(xi)*b == sum(Yi),...
	sum(xi)*a + sum(xi.^2)*b == sum(xi.*Yi)];
[a b] = solve(eqs, [a, b]);
p = @(x) 1./(a + b * x); e = sum((p(xi)-yi).^2);
fprintf('a = %f, b = %f. E = %f\n', a, b, e);
scatter(xi, yi); hold on; plot(0:0.1:5, p(0:0.1:5));
