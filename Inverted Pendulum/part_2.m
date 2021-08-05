A = [0 1 0 0;0 -2.2626 -0.3963 0.0082;0 0 0 1;0 3.5649 16.0655 -0.3324];
B = [0;0.2263;0;-0.3565];
C1 = [1 0 0 0];
C2 = [0 0 1 0];
D = 0;
k=1;
[b1,a1] = ss2tf(A,B,C1,D);
[b2,a2] = ss2tf(A,B,C2,D);
GH_1 = tf(b1 , a1);
GHcl_1 = tf([1 -3.8187],[1 -3.7730]);
syscl1 = tf([1 4.0925],[1 9.14912936 6.4137 0]);
%rlocus(GH_2)
%stepinfo(syscl)
%step(syscl)
%rlocus(syscl)
GH_2 = tf(b2 , a2);
syscl2 = tf([1] , [1 9.14912936 6.4137]);
rlocus(syscl2)
stepinfo(syscl2)

%q = minreal(G_11);
%s = stepinfo(G_11);
q = roots(b2);
