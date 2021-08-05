% define state matrix

A = [0 1 0 0;0 -2.2626 -0.3963 0.0082;0 0 0 1;0 3.5649 16.0655 -0.3324];
B = [0;0.2263;0;-0.3565];
C = [1 0 0 0];
D = 0;

%Create state space object
sys = ss(A,B,C,D);

%Check open loop eigenvalues
E = eig(A);

% Desired closed loop eigenvalues
P = [-0.3+0.49i -0.3-0.49i -9.1416 -9.8187];

% Solve for K using pole placement
k = place(A,B,P);

% Check for closed loop eigenvalues
Acl = A - B*k;
Ecl = eig(Acl);

% Create closed loop system
syscl = ss(Acl,B,C,D);

%Check step response
step(syscl);

% Solve for Kf
Kdc = dcgain(syscl);
Kf = 1/Kdc;

% Create scaled input closed loop system
syscl_scaled = ss(Acl,B*Kf,C,D);
step(syscl_scaled)