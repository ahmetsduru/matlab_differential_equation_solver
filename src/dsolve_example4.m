clear;
clc;

syms y(t) 
eqn = diff(y,t,2) + 3*diff(y,t) + 2*y == 24;
Dy = diff(y,t);
cond = [y(0) == 10, Dy(0) == 0];
s = dsolve(eqn,cond);
pretty(simplify(s));
fplot(s,[0 16])
