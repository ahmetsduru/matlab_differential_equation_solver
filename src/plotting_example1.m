clear;
clc;

x = 0:pi/25:2*pi;
y = sin(x);

plot(x,y,'r-.');
title('sin(x) function');
legend('sin(x)');
xlabel('x values');
ylabel('function values');
grid on;