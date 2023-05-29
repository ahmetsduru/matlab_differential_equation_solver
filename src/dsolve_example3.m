clear;
clc;

syms y(t) 
eqn = diff(y,t) + 2*y == 12*sin(4*t);
cond = y(0) == 10;
s = dsolve(eqn,cond);
pretty(simplify(s));
fplot(s,[0 5])
