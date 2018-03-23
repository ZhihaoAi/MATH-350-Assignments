Jm = @(m,x) besselj(m,x); term = @(m) Jm(m, m*e)*sin(m*M)/m; 
M = 24.851090; e = 0.1; m = 1; E = M;
while abs(term(m)) >= eps(E)
	E = E + 2*term(m); m = m+1;
end
fprintf('E = %.52f\nF(E) = %.52f\nm = %d\n', E, F(E), m-1);
