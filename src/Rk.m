clear;
clc;

dy1 = @(x,y1,y2,y3) 2*y1 + y2 + 5*y3 + exp(-2*x);
dy2 = @(x,y1,y2,y3) -3*y1 - 2*y2 - 8*y3 + 2*exp(-2*x) - cos(3*x);
dy3 = @(x,y1,y2,y3) 3*y1 + 3*y2 + 2*y3 + cos(3*x);


x0 = 0;
y10 = 1;
y20 = -1;
y30 = 0;
h = 0.01;
i=0;

for t=0:0.01:pi/2 % Runge-kutta method 4th order
    
    k11 = dy1(x0,y10,y20,y30)*h;
    k12 = dy2(x0,y10,y20,y30)*h;
    k13 = dy3(x0,y10,y20,y30)*h;
    
    k21 = dy1(x0+0.5*h,y10+k11*0.5,y20+k12*0.5,y30+k13*0.5)*h;
    k22 = dy2(x0+0.5*h,y10+k11*0.5,y20+k12*0.5,y30+k13*0.5)*h;
    k23 = dy3(x0+0.5*h,y10+k11*0.5,y20+k12*0.5,y30+k13*0.5)*h;

    k31 = dy1(x0+0.5*h,y10+k21*0.5,y20+k22*0.5,y30+k23*0.5)*h;
    k32 = dy2(x0+0.5*h,y10+k21*0.5,y20+k22*0.5,y30+k23*0.5)*h;
    k33 = dy3(x0+0.5*h,y10+k21*0.5,y20+k22*0.5,y30+k23*0.5)*h;
    
    k41 = dy1(x0+h,y10+k31,y20+k32,y30+k33)*h;
    k42 = dy2(x0+h,y10+k31,y20+k32,y30+k33)*h;
    k43 = dy3(x0+h,y10+k31,y20+k32,y30+k33)*h;
    
    ynew1 = y10 + (1/6)*(k11+2*k21+2*k31+k41);
    ynew2 = y20 + (1/6)*(k12+2*k22+2*k32+k42);
    ynew3 = y30 + (1/6)*(k13+2*k23+2*k33+k43);
    
    i = i+1;
    y1(i) = y10;
    y2(i) = y20;
    y3(i) = y30;
    y10 = ynew1;
    y20 = ynew2;
    y30 = ynew3;
    x0 = x0 + h
    time(i) = t; 
end

plot(time,y1)
hold on
plot(time,y2)
hold on
plot(time,y3)




