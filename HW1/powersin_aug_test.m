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
       if n==1
           fprintf("n=3\ns = %64.60f\nt = %64.60f\n+ = %64.60f\ne = %64.60f\n\n", s, t, s+t, eps(s));
       end
       n = n + 2;
       if n==117
           fprintf("n=117\ns = %64.60f\nt = %64.60f\n+ = %64.60f\ne = %64.60f\n\n", s, t, s+t, eps(s));
       end
       if n==119
          fprintf("n=119\ns = %64.60f\nt = %64.60f\n+ = %64.60f\ne = %64.60f\n\n", s, t, s+t, eps(s));
          fprintf("^ = %64.60f\n", eps(s+t));
          tmp=s+t;
          fprintf("p = %64.60f\n", tmp-t);
       end
       if n==121
           fprintf("n=121\ns = %64.60f\nt = %64.60f\n+ = %64.60f\ne = %64.60f\n\n", s, t, s+t, eps(s));
           fprintf("^ = %64.60f\n", s+eps(s));
       end
    end
    if n ~= 1 % get true term number
        n = n - 2;
    end
    fprintf("e = %64.60f", eps);
