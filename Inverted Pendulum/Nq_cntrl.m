A = [0 1 0 0;0 -2.2626 -0.3963 0.0082;0 0 0 1;0 3.5649 16.0655 -0.3324];
B = [0;0.2263;0;-0.3565];
C = [1 0 0 0];
D = 0;
[b,a] = ss2tf(A,B,C,D);
GH = tf(b,a);
cloop = feedback(GH, 1);
r = pole(cloop);
% plot Bode of closed loop
%bode(100 *GH);
margin(100*GH)
grid on
%title('Bode Plot with Gain = 100')
