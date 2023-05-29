clear;
clc;

x = 0:pi/25:2*pi;
y = sin(x) + cos(2*x);
z = cos(1.5*x)-sqrt(x);

a = plot(x,y,x,z);
a(1).Marker = '*';
a(1).Color = 'k';
a(2).Marker = 'o';
a(2).Color = 'r';
a(2).LineWidth = 2;
legend('$$sin(x) + cos(2x)$$','$$cos(1.5x)-\sqrt(x)$$'...
    ,'Interpreter','latex')
xlabel('x values');
ylabel('function values');
grid on;
axis equal;