function xd = evaluateOde(t, x, m1, m2, l, g, d1, k)
xd = zeros(1,4);
%setpoints
xs = [-1; 0; 0; 0];
if(t>5)
    xs = [1; 0; 0; 0];
end

%open loop
if(t>8)
    %if(t>0)
    u = 0;
else 
    if ( x(3) > (-pi/5) ) && ( x(3) < (+pi/5))
        %lqr control u = k*(xs-x)
        u = k * (xs - [x(1);x(2);x(3);x(4)]);
    else
        %energy based swing-up control
        E=2/3*m2*l^2*x(4)^2-m2*g*l*(cos(x(3))-1);
        u=0.2*m1*E*x(4)*cos(x(3));
    end
    
end

%differential equation
xd(1) = x(2);
xd(2) = (-d1*x(2) + g*m2*sin(2*x(3))/2 - l*m2*x(4)^2*sin(x(3)) + u)/(m2*sin(x(3))^2 + m1);
xd(3) = x(4);
xd(4) = (g*(m1 + m2)*sin(x(3)) - (d1*x(2) + l*m2*x(4)^2*sin(x(3)) - u)*cos(x(3)))/(1*(m2*sin(x(3))^2 + m1));

end