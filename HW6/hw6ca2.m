f = @(x) cos(x).^2;
fprintf('%f %f\n', quadtx(f,0,4*pi), quad(f,0,4*pi));