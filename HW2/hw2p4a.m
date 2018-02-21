n = 100;
A = diag(ones(1,n-1)*-1,-1) + diag(ones(1,n)*2) + diag(ones(1,n-1)*-1,1);
b = (1:n)';
bslashtx(A, b)

% for answer display in latex 
x = bslashtx(A, b)';
for i = 1:n-1
	fprintf('%.4f,', x(i)/1.0e+04);
end
fprintf('%.4f\n', x(n)/1.0e+04);
