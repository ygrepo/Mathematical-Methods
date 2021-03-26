%%
clc
clear all
syms h x
% y = x^2
y = (1 + h^2 - 2 * h * x)^(-1/2)
f=int(y,0,1);
simplify(f)
