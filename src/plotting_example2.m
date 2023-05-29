clear;
clc;

x = 0:pi/25:2*pi;
y = sin(x) + cos(2*x);
z = cos(x);

subplot(2,1,1);
plot(x,y,'r-.','LineWidth',2);
title('sin(x) + cos(2x)');
legend('sin(x) + cos(2x)');
xlabel('x values');
ylabel('function values');

subplot(2,1,2);
plot(x,z,'k--','LineWidth',3);
title('cos(x)');
legend('cos(x)');
xlabel('x values');
ylabel('cos(x) function values');