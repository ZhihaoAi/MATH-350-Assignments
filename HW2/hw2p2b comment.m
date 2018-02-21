function r = hw2p2_2(a)
	[n, n] = size(a);
	for j = 1:n
		for i = 1:j-1
			s = 0;
			for k = 1:i-1
				fprintf('loop 3: r(%d,%d)*r(%d,%d) = %d*%d = %d\n', k, i, k, j, r(k,i), r(k,j), r(k,i)*r(k,j));
				s = s + r(k,i)*r(k,j);
			end
			fprintf('loop 2: r(%d,%d) = (a(%d,%d) - %d)/r(%d,%d) = (%d - %d)/%d = %d\n', i, j, i, j, s, i, i, a(i,j), s, r(i,i), (a(i,j) - s)/r(i,i));
			r(i,j) = (a(i,j) - s)/r(i,i);
		end
		s = 0;
		for k = 1:j-1
			%fprintf('loop 1: r(%d,%d)^2 = %d^2 = %d\n', k, j, r(k,j), r(k,j)^2);
			s = s + r(k,j)^2;
		end
		%fprintf('loop 0: r(%d,%d) = sqrt((a(%d,%d) - %d)) = sqrt(%d - %d) = %d\n', j, j, j, j, s, a(j,j), s, sqrt((a(j,j) - s)));
		r(j,j) = sqrt((a(j,j) - s));
	end
