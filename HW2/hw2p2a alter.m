%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% test if all eigenvalues > 0 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 1000; nd = 10; % n = number of iteration, nd = number of dimension
nt = 0; nf = 0; % nt = number of true, nf = number of false

% M = magic(n)
for i = 2:nd
	if all(eig(magic(i)) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == nd - 1)
	fprintf('magic(n) is positive definite.\n');
else
	if (nf == nd - 1)
		fprintf('magic(n) is not positive definite.\n');
	end
end
nt = 0; nf = 0;

% H = hilb(n)
for i = 2:nd
	if all(eig(hilb(i)) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == nd - 1)
	fprintf('hilb(n) is positive definite.\n');
else
	if (nf == nd - 1)
		fprintf('hilb(n) is not positive definite.\n');
	else
		fprintf('hilb(n): nt = %d, nf = %d\n', nt, nf);
	end
end
nt = 0; nf = 0;	

% P = pascal(n)
for i = 2:nd
	if all(eig(pascal(i)) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == nd - 1)
	fprintf('pascal(n) is positive definite.\n');
else
	if (nf == nd - 1)
		fprintf('pascal(n) is not positive definite.\n');
	else
		fprintf('pascal(n): nt = %d, nf = %d\n', nt, nf);
	end
end
nt = 0; nf = 0;	

% I = eye(n,n)
for i = 2:nd
	if all(eig(eye(i,i)) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == nd - 1)
	fprintf('eye(n, n) is positive definite.\n');
else
	if (nf == nd - 1)
		fprintf('eye(n, n) is not positive definite.\n');
	end
end
nt = 0; nf = 0;	

% R = randn(n,n)
for i = 1:n
	if all(eig(randn(nd,nd)) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == n)
	fprintf('randn(n,n) is positive definite.\n');
else
	if (nf == n)
		fprintf('randn(n,n) is not positive definite.\n');
	else
		fprintf('randn(n,n): nt = %d, nf = %d\n', nt, nf);
	end
end
nt = 0; nf = 0;	

% R = randn(n,n); A = R’ * R
for i = 1:n
	r = randn(nd,nd);
	if all(eig(r'*r) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == n)
	fprintf('A = R’ * R is positive definite.\n');
else
	if (nf == n)
		fprintf('A = R’ * R is not positive definite.\n');
	else
		fprintf('A = R’ * R: nt = %d, nf = %d\n', nt, nf);
	end
end
nt = 0; nf = 0;	

% R = randn(n,n); A = R’ + R
for i = 1:n
	r = randn(nd,nd);
	if all(eig(r'+r) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == n)
	fprintf('A = R’ + R is positive definite.\n');
else
	if (nf == n)
		fprintf('A = R’ + R is not positive definite.\n');
	else
		fprintf('A = R’ + R: nt = %d, nf = %d\n', nt, nf);
	end
end
nt = 0; nf = 0;	

% R = randn(n,n); I = eye(n,n); A = R’ + R + n*I
for i = 1:n
	r = randn(nd,nd);
	if all(eig(r'+r+nd*eye(nd,nd)) > 0)
		nt = nt + 1;
	else
		nf = nf + 1;
	end
end
if (nt == n)
	fprintf('A = R’ + R + n*I is positive definite.\n');
else
	if (nf == n)
		fprintf('A = R’ + R + n*I is not positive definite.\n');
	else
		fprintf('A = R’ + R + n*I: nt = %d, nf = %d\n', nt, nf);
	end
end
nt = 0; nf = 0;	
