m = 0.3211;
M = 4.2774;
L = 0.3533;
g = -10;
d = 10;

tspan = 0:.1:30;
y0 = [0; 0; pi; .5];
[t,y] = ode45(@(t,y)cartpend(y,m,M,L,g,d,0),tspan,y0);
for k=1:length(t)
    drawcartpend_bw(y(k,:),m,M,L);
end
