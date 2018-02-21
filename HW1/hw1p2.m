% generate latex table for question 3.2.2

n = 19;
a = r(3.75, n);
b = r(3.775, n);
for i = 1:n
	fprintf("%-2d & %f & %f \\\\\n", i, a(i), b(i));
end

function a = r(x, n)
    a = zeros(n,1);
    a(1) = x;
    a(2) = x;
    for i = 1:n-2
      a(i+2) = 10*a(i+1)-9*a(i);
    end
end
