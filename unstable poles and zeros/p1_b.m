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