A = [0 1 0 0;0 -2.2626 -0.3963 0.0082;0 0 0 1;0 3.5649 16.0655 -0.3324];
B = [0;0.2263;0;-0.3565];
C1= [1 0 0 0];
C2= [0 0 1 0];
D =0;
[b1,a1] = ss2tf(A,B,C1,D);
[b2,a2] = ss2tf(A,B,C2,D);
GH =tf(b1,a1);
motor = ss(A,B,C1,D);
