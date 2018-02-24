x = [-1.00 -0.96 -0.65 0.10 0.40 1.00]; y = [-1 -0.1512 0.3860 0.4802 0.8838 1];
u = -1:0.0001:1; t = -0.3;
v1 = piecelin(x,y,u); v2 = polyinterp(x,y,u); v3 = splinetx(x,y,u); v4 = pchiptx(x,y,u);
figure; plot(x,y,'o',u,v1,'-'); figure; plot(x,y,'o',u,v2,'-'); 
figure; plot(x,y,'o',u,v3,'-'); figure; plot(x,y,'o',u,v4,'-'); 
fprintf('%.4f, %.4f, %.4f, %.4f\n', piecelin(x,y,t), polyinterp(x,y,t), splinetx(x,y,t), pchiptx(x,y,t));
