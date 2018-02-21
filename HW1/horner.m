h([6,5,4,3,2,1], 5)

function res = h(c, x)
% c - coefficient vector
% x - independent variable
    res = c(1);
    for i = 2:length(c)
	    res = res * x + c(i);
    end
end
