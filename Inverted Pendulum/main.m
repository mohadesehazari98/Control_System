%parameterization
M = 0.3211;
m = 4.2774;
L = 0.3533;
g = 9.81;
d = 10;

% parameterization and A and B matrix
A = [0 1 0 0;0 -2.2626 -0.3963 0.0082;0 0 0 1;0 3.5649 16.0655 -0.3324];
B = [0;0.2263;0;-0.3565];
C = [1 0 0 0];
D = 0;

%check rank to see if the system is controllable
rank(ctrb(A,B));

%Create state space object
sys = ss(A,B,C,D);

%Check open loop eigenvalues
E = eig(A);

% Desired closed loop eigenvalues
P = [-0.3+0.49i -0.3-0.49i -9.1416 -9.8187];

% Solve for K using pole placement
k = place(A,B,P);

y0 = [0; 0; 0; 0];
[t,y] = ode45(@(t,y)cartpend(y,m,M,L,g,d,-k*(y-[4; 0; 0; 0])),tspan,y0);

%create time vector 
tspan = 0:0.01:15;

%initial condition: [x, x_d, theta, theta_d]
x0 = [0; 0; -pi; 2];
%x0 = [-1; 0; 0; 0.5];

%ode options
odeset('relTol',1e-7,'absTol',realmin);

%draw the pendulum animation

for k=1:100:length(t)
    drawcartpend_bw(y(k,:),m,M,L);
end
