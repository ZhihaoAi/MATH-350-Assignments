a = 1/sqrt(2);
syms f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13;
f = solve([f2 == f6, f3 == 10, a*f1 == f4 + a*f5, a*f1 + f3 + a*f5 == 0, f4 == f8, f7 == 0, a*f5 + f6 == a*f9 + f10, ...
	a*f5 + f7 + a*f9 == 15, f10 == f13, f11 == 20, f8 + a*f9 == a*f12, a*f9 + f11 + a*f12 == 0, f13 + a*f12 == 0]);	
[f.f1 f.f2 f.f3 f.f4 f.f5 f.f6 f.f7 f.f8 f.f9 f.f10 f.f11 f.f12 f.f13]
