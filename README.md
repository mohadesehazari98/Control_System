# Control_System
 all codes in Control system and control lab
# DC motor
Two kinds of controlling DC motors:
Controlling armature current 
Magnetic field fluid 
![image](https://user-images.githubusercontent.com/84409349/128508506-9ca9bc71-a56d-454f-931f-06f0100d6a68.png)

Ode1:
Use the Ode1 solver with a first order of accuracy.

Ode3:
Use Ode3 solver with a third order of accuracy.

Ode45:
matlab’s standard solver for ordinary differential equations (ODEs) is the function Ode45. This function implements a Runge-Kutta method with a variable time step for efficient computation.

Ode23:
Compares method of order two and three to automatically choose the step size and maintain a specified accuracy. It is the simplest matlab solver that has modern features such as automatic error estimate and continues interpolant. Ode23 is suitable for coarse accuracy requirements such as computer graphics.

Ode113:
Problem type: non shift, order of accuracy: low to high, when to use: If using stringent error tolerances or solving a computationally intensive ODE file.

Ode15s:
Problem type: stiff, order of accuracy: low to medium, when to use: if Ode45 is slow because the problem is stiff.

Ode23s:
Problem type: stiff, order of accuracy: low, when to use: if using crude error tolerances to solve stiff systems and the mass matrix is constant.

Ode23t:
Problem type: moderately stiff, order of accuracy: low, when to use: if the problem is only moderately stiff and you need a solution without numerical damping.

Ode23tb:
Problem type: stiff, order of accuracy: low, when to use: if using crude error tolerance to solve stiff systems.

OdeN:
The ordinary differential equation (ODE) solvers in matlab solve initial value problems with a variety of properties. The solvers can work on stiff or non-stiff problems, problems with a mass matrix, differential algebraic equations (DAEs), or fully implicit problems.

#Sim-mechanics

In this experiment we see one of matlab’s property a classical simulation for mechanical systems. With simMechanics we can have our desired outputs due to classical Newton’s Laws. In pendulum part we can easily change pendulum’s angle to see it’s stability. Also we can see stable and transient response of our system and with changing the time we can reach to our desired graph. Finally, the simscape part in matlab has real physical blocks so we can easily compare our result with real experiments results.

![image](https://user-images.githubusercontent.com/84409349/128510118-75095cec-8944-4346-928b-b9e2b2846fc5.png)

# Inverted Pendulum

![gif](https://fab.cba.mit.edu/classes/865.21/topics/control/img/oc_ip-lqr.gif)

ref of gif (https://fab.cba.mit.edu)


