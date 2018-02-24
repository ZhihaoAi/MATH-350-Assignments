figure('position',get(0,'screensize'))
axes('position',[0 0 1 1])
[x,y] = ginput;
n = length(x);
s=(1:n)'; t=(1:.05:n)';
u1=splinetx(s,x,t); v1=splinetx(s,y,t);
u2=pchiptx(s,x,t); v2=pchiptx(s,y,t);
figure
plot(x,y,'.',u1,v1,'-');
figure
plot(x,y,'.',u2,v2,'-');
