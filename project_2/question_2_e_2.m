%%
clc
clear all
syms r 

R = 10;
Q = 2;
PR = piecewise((0<=r) & (r<=R), (1-r/R), r>R, 0);
%ri = linspace(0, R)
ri = 0:1:R;
rR = ri / R;
Ci = 0.5 * rR.^3 - rR.^2 + 1;
Ci = (27/11) * Ci;

ro = linspace(R, 5*R);
ro = R:1:5*R;
Co = (27* R/22) .* 1./ro;
figure
plot(ri, Ci, "-r", 'LineWidth',2,'MarkerSize',3)
hold on
plot(ro, Co, "-r", 'LineWidth',2,'MarkerSize',3)
hold on
fplot(PR, [0 5*R], "-b", 'LineWidth',2,'MarkerSize',3);
xlim([0 5*R])
xlabel("Distance to origin $r$", "Interpreter","latex", 'FontSize', 14);
ylabel("$\frac{C(r)}{C_M}$ and $\frac{P(r)}{Q}$", "Interpreter","latex", ...
    'FontSize', 14);
legend('$\frac{C(r)}{C_M}$', '', '$\frac{P(r)}{Q}$', ...
    'Interpreter', 'latex', 'FontSize', 14);
title("Product release $P(r)$ and concentration $C(r)$", ...,
    "Interpreter","latex", 'FontSize', 14);
grid on
saveas(gcf,"concentration",'pdf')