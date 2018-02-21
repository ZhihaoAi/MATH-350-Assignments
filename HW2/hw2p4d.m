n = 100;
e = ones(n,1);
A = spdiags([e*-1 e*2 e*-1], -1:1, n, n);
condest(A)
