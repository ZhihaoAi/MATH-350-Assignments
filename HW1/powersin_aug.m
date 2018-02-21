function [s, n, max] = powersin_aug(x)
% [computed sum, number of terms, max term]
    s = 0;
    t = x;
    max = t;
    n = 1;
    while s+t ~= s
       s = s + t;
       if abs(t) > abs(max) % find the largest term
           max = t;
       end
       t = -x.^2/((n+1)*(n+2)).*t;
       n = n + 2;
    end
    if n ~= 1 % get true term number
        n = n - 2;
    end
