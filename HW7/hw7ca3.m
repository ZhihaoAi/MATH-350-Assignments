f = @(t,y) -2*y.^2 + 1./(1+t.^2); as = @(t) t./(1+t.^2);
t0 = 0; t1 = 0.3; y0 = 0;
as1 = as(0.1); as2 = as(0.2); as3 = as(0.3);
ys_ab2 = AB2(f,t0,t1,y0,y0+0.025*f(t0,y0),0.025);
fprintf('AB2: %f\n', ys_ab2(end));
fprintf('e1 = %f, e2 = %f, e3 = %f\n', abs(ys_ab2(1+4) - as1), abs(ys_ab2(1+8) - as2), abs(ys_ab2(1+12) - as3));

function ys = AB2(f,t0,t1,y0,y1,h)
	N = round((t1-t0)/h); ys = zeros(1,N+1); ts = t0:h:t1;
	ys(1) = y0; ys(2) = y1;
	for n=1:N-1
	   f1 = f(ts(n),ys(n)); f2 = f(ts(n+1),ys(n+1));
	   ys(n+2) = ys(n+1) + h/2*(3*f2-f1);
	end
end