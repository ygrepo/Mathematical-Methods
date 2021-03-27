%%
clc
clear all
syms r 

figure
R = 10;
%r = linspace(0,10, 10);
Q = 2;
PR = piecewise((0<=r) & (r<=10), Q * (1-r/R), r>R, 0);
xlim([0 15])
ylim([0 3])
fplot(PR, [0 15], "-r", 'LineWidth',2,'MarkerSize',3);
xlabel("$r$ distance to origin", "Interpreter","latex", 'FontSize', 14);
ylabel("$P(r)$", "Interpreter","latex", 'FontSize', 14);
title("Product release $P(r)$ for $Q=2$, $R=10$", "Interpreter","latex", 'FontSize', 14);
grid on
saveas(gcf,"pr",'pdf')