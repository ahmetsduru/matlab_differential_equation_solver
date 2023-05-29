clear;
clc;

syms y(t) x
eqn = x+diff(y,t) + y == (exp(2*x) - sin(x));
s = dsolve(eqn);
pretty(simplify(s));
