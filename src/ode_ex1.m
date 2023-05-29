tspan = [0,pi/2];
y0 = [1;-1;0];
[t,y] = ode45('definedFun',tspan,y0);
[t1,y1] = ode23('definedFun',tspan,y0);

subplot(2,1,1);
plot(t,y,'.');
title('ode45');

subplot(2,1,2);
plot(t1,y1,'.');
title('ode23');