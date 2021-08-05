J = 3.2284e-5;
b = 3.5077e-6;
K = 0.0274;
Ra = 4;
La = 2.75e-6;
G1 = tf([J b] , [J*La (J*Ra + b*La) (b*Ra + K^2)]);
G2 = tf(K , [J*La (b*La + Ra*J) (Ra*b + K^2) 0]);
G3 = tf([K 0] , [J*La (b*La + Ra*J) (Ra*b + K^2) 0]);
subplot(1,3,1)
step(G1);
subplot(1,3,2)
step(G2);
subplot(1,3,3)
step(G3);