%%
clc
clear all
syms r 

R = 10;
Q = 2;
PR = piecewise((0<=r) & (r<=R), (1-r/R), r>R, 0);
ri = 0:1:R;
rR = ri / R;
Ci = 0.5 * rR.^3 - rR.^2 + 1;

ro = R:1:5*R;
Co = R .* 1./(2 .* ro);
figure
plot(ri, Ci, "-r", 'LineWidth',2,'MarkerSize',3)
hold on
h = plot(ro, Co, "-r", 'LineWidth',2,'MarkerSize',3);
h.Annotation.LegendInformation.IconDisplayStyle = 'off';
hold on
fplot(PR, [0 5*R], "-b", 'LineWidth',2,'MarkerSize',3);
xlim([0 5*R])
xlabel("Distance to origin $r$", "Interpreter","latex", 'FontSize', 14);
ylabel("$\frac{P(r)}{Q}$ and $\frac{C(r)}{C_M}$", "Interpreter","latex", ...
    'FontSize', 14);
legend('$\frac{C(r)}{C_M}$', '$\frac{P(r)}{Q}$', ...
    'Interpreter', 'latex', 'FontSize', 14);
title("Product release $P(r)$ and concentration $C(r)$", ...,
    "Interpreter","latex", 'FontSize', 14);
grid on
saveas(gcf,"concentration",'pdf')


%%
clc
clear all
syms r 

R = 10;
Q = 1;
D = 1;
PR = piecewise((0<=r) & (r<=R), (1-r/R), r>R, 0);
ri = 0:1:R;
Ci = (0.5 * ri.^3/R) - ri.^2 + R^2;
Ci = Q/(6 * D) * Ci;

Cid = (0.5 * ri.^3/R) - ri.^2 + R^2;
Cid = Q/(6 * 2 * D) * Cid;

ro = R:1:5*R;
Co = (Q/(12 * D)) * R^3 * 1./ro;
Cod = (Q/(12 * 2 * D)) * R^3 * 1./ro;

figure


plot(ri, Ci, "-c", 'LineWidth',2,'MarkerSize',3)
hold on
h1 = plot(ro, Co, "-c", 'LineWidth',2,'MarkerSize',3);
h1.Annotation.LegendInformation.IconDisplayStyle = 'off';
hold on

plot(ri, Cid, "-g", 'LineWidth',2,'MarkerSize',3)
hold on
h2 = plot(ro, Cod, "-g", 'LineWidth',2,'MarkerSize',3);
h2.Annotation.LegendInformation.IconDisplayStyle = 'off';
hold on

xlabel("Distance to origin $r$", "Interpreter","latex", 'FontSize', 14);
ylabel("$C(r)_D$ and $C(r)_{2D}$", "Interpreter","latex", ...
    'FontSize', 14);
legend('$C(r)_D$', '$C(r)_{2D}$', ...
    'Interpreter', 'latex', 'FontSize', 14);
title("$C(r)_D$ vs. $C(r)_{2D}$", ...,
     "Interpreter","latex", 'FontSize', 14);
grid on
saveas(gcf,"concentration_d_2d",'pdf')

