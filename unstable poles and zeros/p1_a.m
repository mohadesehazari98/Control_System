subplot(1,2,1)
G = tf([0 2] , [1 16]);
step(G);
subplot(1,2,2)
tp = 5;
t = 0:0.01:tp;
U = 2 * sin(4*t);
Y = lsim(G,U,t);
plot(t,Y);
title('2sin(4t) response(a)')
xlabel('time')
ylabel('Amplitude')
%%
subplot(1,2,1)
G = tf([0 2] , [1 -16]);
step(G);
subplot(1,2,2)
tp = 5;
t = 0:0.01:tp;
U = 2 * sin(4*t);
Y = lsim(G,U,t);
plot(t,Y);
title('2sin(4t) response(b)')
xlabel('time')
ylabel('Amplitude')
%%
subplot(1,3,1)
tp = 5;
t = 0:0.1:tp;
G = tf([0 2] , [1 0 16]);
step(G , t);
subplot(1,3,2)
U1 = 2 * sin(4*t);
Y1 = lsim(G,U1,t);
plot(t,Y1);
title('2sin(4t) response(c)')
xlabel('time')
ylabel('Amplitude')
subplot(1,3,3)
U2 = 2 * sin(5*t);
Y2 = lsim(G,U2,t);
plot(t,Y2);
title('2sin(5t) response(c)')
xlabel('time')
ylabel('Amplitude')
