function hw1p1(x)
% sum, n terms required, largest term, error
    for i = 1:length(x)
        [sum, n, max] = powersin_aug(x(i));
        error = abs(abs(sum)-1);
        fprintf("%f %d %e %e\n", [sum n max error]);
    end
