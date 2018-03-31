syms a b;
xi = 0.2:0.1:0.8; yi = [3.16, 2.38, 1.75, 1.34, 1.00, 0.74, 0.56]; Yi = log(yi);
eqs = [sum(xi)*log(b) - sum(xi.^2)*a == sum(xi.*Yi),...
	length(xi)*log(b) - sum(xi)*a == sum(Yi)];
[a b] = solve(eqs, [a, b]);
q = @(x) b*exp(-a.*x); e = sum((q(xi)-yi).^2);
fprintf('a = %f, b = %f. E = %f\n', a, b, e);
scatter(xi, yi); hold on; plot(0:0.01:1, q(0:0.01:1));
