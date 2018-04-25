f = @(t,y) 2./sqrt(pi).*exp(-t.^2);
[t,y] = ode23tx(f,[0 2],0);
fprintf('ode23tx: %f, erf: %f\n', y(end), erf(2));
