Func1 = @(t,x) [(1/L) *(-R*x(1) + V - K*x(3));x(3);(1/J)*(K*x(1) - b* x(3))];
V=1;
ts = 0:0.01:5;
x0 = [0 0 0];
[t,x] = ode15s(Func1,ts,x0);
subplot(1,3,1)
plot(t,x(:,1),'linewidth',2);
xlabel ('Time [sec]')
ylabel ('Amplitude')
title('x1(t)=ia') 
subplot(1,3,2)
plot(t,x(:,2),'linewidth',2);
xlabel ('Time [sec]')
ylabel ('Amplitude')
title('x2(t)=tetha') 
subplot(1,3,3)
plot(t,x(:,3),'linewidth',2);
xlabel ('Time [sec]')
ylabel ('Amplitude')
title('x3(t)=dtheta') 
 