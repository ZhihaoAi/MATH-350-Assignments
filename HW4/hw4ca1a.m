M = 24.851090; e = 0.1; F = @(E) E - e*sin(E) - M;
fprintf('E = %.52f\n', fzerotx(F,[0,50]));