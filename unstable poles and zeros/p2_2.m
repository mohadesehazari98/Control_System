subplot(1,4,1)
G1 = tf(2 , [1 9 20]);
step(G1);
title('a')
subplot(1,4,2)
G2 = tf([-0.2 2] , [1 9 20]);
step(G2);
title('b')
subplot(1,4,3)
G3 = tf([-20 2] , [1 9 20]);
step(G3)
title('c')
subplot(1,4,4)
G4 = tf([2 -20] , [1 9 20]);
step(G4)
title('d')
