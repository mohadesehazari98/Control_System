A = [0 1 0 0;0 -2.2626 -0.3963 0.0082;0 0 0 1;0 3.5649 16.0655 -0.3324];
B = [0;0.2263;0;-0.3565];
s=-1;
eig(A)

rank(ctrb(A,B))  % is it controllable

%%  Pole placement

% p is a vector of desired eigenvalues
p = [-3; -3.1; -3.2; -3.3]; % aggressive
% p = [-3.5; -3.6; -3.7; -3.8]; % breaks
K = place(A,B,p);
% K = lqr(A,B,Q,R);

tspan = 0:.001:10;
if(s==-1)
    y0 = [0; 0; 0; 0];
    [t,y] = ode45(@(t,y)cartpend(y,m,M,L,g,d,-K*(y-[4; 0; 0; 0])),tspan,y0);
elseif(s==1)
    y0 = [-3; 0; pi+.1; 0];
%     [t,y] = ode45(@(t,y)cartpend(y,m,M,L,g,d,-K*(y-[1; 0; pi; 0])),tspan,y0);
    [t,y] = ode45(@(t,y)cartpend(y,m,M,L,g,d,-K*(y-[1; 0; pi; 0])),tspan,y0);
else 
end

for k=1:100:length(t)
    drawcartpend_bw(y(k,:),m,M,L);
end