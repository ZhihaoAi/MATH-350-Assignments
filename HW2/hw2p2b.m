function r = hw2p2b(a)
	[n, n] = size(a);
	for j = 1:n
		for i = 1:j-1
			s = 0;
			for k = 1:i-1
				s = s + r(k,i)*r(k,j);
			end
			r(i,j) = (a(i,j) - s)/r(i,i);
		end
		s = 0;
		for k = 1:j-1
			s = s + r(k,j)^2;
		end
		r(j,j) = sqrt((a(j,j) - s));
	end
