f = @(t,y) -2*y.^2 + 1./(1+t.^2); as = @(t) t./(1+t.^2);
t0 = 0; t1 = 0.3; y0 = 0;
as1 = as(0.1); as2 = as(0.2); as3 = as(0.3);
ys_ee = EE(f,t0,t1,y0,0.025);
fprintf('EE: %f\n', ys_ee(end));
fprintf('e1 = %f, e2 = %f, e3 = %f\n', abs(ys_ee(1+4) - as1), abs(ys_ee(1+8) - as2), abs(ys_ee(1+12) - as3));
ys_rk2 = RK2(f,t0,t1,y0,0.05);
fprintf('RK2: %f\n', ys_rk2(end));
fprintf('e1 = %f, e2 = %f, e3 = %f\n', abs(ys_rk2(1+2) - as1), abs(ys_rk2(1+4) - as2), abs(ys_rk2(1+6) - as3));
ys_rk4 = RK4(f,t0,t1,y0,0.1);
fprintf('RK4: %f\n', ys_rk4(end));
fprintf('e1 = %f, e2 = %f, e3 = %f\n', abs(ys_rk4(1+1) - as1), abs(ys_rk4(1+2) - as2), abs(ys_rk4(1+3) - as3));

function ys = EE(f,t0,t1,y0,h)
	N = round((t1-t0)/h); ys = zeros(1,N+1); ts = t0:h:t1; ys(1) = y0;
	for n=1:N
		ys(n+1) = ys(n) + h*f(ts(n),ys(n));
	end
end

function ys = RK2(f,t0,t1,y0,h)
	N = round((t1-t0)/h); ys = zeros(1,N+1); ts = t0:h:t1; ys(1) = y0;
	for n=1:N
		k1 = f(ts(n),ys(n)); k2 = f(ts(n)+h,ys(n)+h*k1);
		ys(n+1) = ys(n) + h/2*(k1+k2);
	end
end

function ys = RK4(f,t0,t1,y0,h)
	N = round((t1-t0)/h); ys = zeros(1,N+1); ts = t0:h:t1; ys(1) = y0;
	for n=1:N
		k1 = f(ts(n),ys(n));
		k2 = f(ts(n)+h/2,ys(n)+h/2*k1);
		k3 = f(ts(n)+h/2,ys(n)+h/2*k2);
		k4 = f(ts(n)+h,ys(n)+h*k3);
		ys(n+1) = ys(n) + h/6*(k1+2*k2+2*k3+k4);
	end
end