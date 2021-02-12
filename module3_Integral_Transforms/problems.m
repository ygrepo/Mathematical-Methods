clear all;
close all;
clc;

%% Plot x sin(x) f for [0, 2pi]
syms w
y = exp(i .* w .* t)

%%
T = 2;
syms y(t);
y = piecewise(0<=t<T/2,2.* t/T, T/2<=t<T, 2 .* (1-t/T));
t = linspace(0,T);
fplot(y)
