clear;
clc;
dy = @(x,y) 2*x;
x0 = 0; y0 = 0; h = 0.5; i = 0;

for t=0:0.5:5
    k1 = h*dy(x0,y0);
    k2 = dy(x0 + 0.5*h, y0 + k1*0.5)*h;
    k3 = dy(x0 + 0.5*h, y0 + k2*0.5)*h;
    k4 = dy(x0 + h, y0 + k3)*h;
    
    ynew = y0 + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
    i = i+1;
    y(i) = y0;
    y0 = ynew;
    x0 = x0 + h;
    time(i) = t;
end
plot(time,y);