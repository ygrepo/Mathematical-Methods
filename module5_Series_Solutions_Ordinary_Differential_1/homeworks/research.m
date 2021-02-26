%%
clc
clear all
syms y(x) a
eqn = diff(y,2) + 2 * x * diff(y,1) + 4 * y == 0;
S = dsolve(eqn)
