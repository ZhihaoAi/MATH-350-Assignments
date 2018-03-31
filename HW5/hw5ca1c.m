syms a b c; xi = cat(2, 1:6, 8:25); yi = [5.0291 6.5099 5.3666 4.1272 4.2948 6.1261 10.0502 9.1614 7.5677 7.2920 10.0357 11.0708 13.4045 12.8415 11.9666 11.0765 11.7774 14.5701 17.0440 17.0398 15.9069 15.4850 15.5112 17.6572];
eqs = [length(xi)*a + sum(xi)*b + sum(sin(xi))*c == sum(yi),...
	sum(xi)*a + sum(xi.^2)*b + sum(sin(xi).*xi)*c == sum(xi.*yi),...
	sum(cos(xi))*a + sum(cos(xi).*xi)*b + sum(sin(xi).*cos(xi))*c == sum(cos(xi).*yi)];
[a b c] = solve(eqs, [a, b, c]);
p = @(x) a+b.*x+c.*sin(x); e = sum((p(xi)-yi).^2);
fprintf('a = %f, b = %f, c = %f. E = %f\n', a, b, c, e);
scatter(xi, yi); hold on; scatter(7, 12.5140, '*'); hold on; plot(0:0.1:26, p(0:0.1:26));
figure; bar(xi, p(xi) - yi)
