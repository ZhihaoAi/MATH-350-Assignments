r(3.75, 19)
r(3.775, 19)

function a = r(x, n)
    a = zeros(n,1);
    a(1) = x;
    a(2) = x;
    for i = 1:n-2
      a(i+2) = 10*a(i+1)-9*a(i);
    end
end
