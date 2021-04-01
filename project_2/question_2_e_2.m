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
ylabel("$\frac{P(r)}{Q}$ and $\frac{C(r)}{C_M}$", "Interpreter","latex", ...
    'FontSize', 14);
legend('$\frac{C(r)}{C_M}$', '', '$\frac{P(r)}{Q}$', ...
    'Interpreter', 'latex', 'FontSize', 14);
title("Product release $P(r)$ and concentration $C(r)$", ...,
    "Interpreter","latex", 'FontSize', 14);
grid on
saveas(gcf,"concentration",'pdf')

%%

clc
clear all


C = (1/12) * ((4^3 / (2 * 3^3)) - (4^2 / (3^2)) + 1)
C2 = (1/12) * 11/ (3^3)
V = 11/(12 * 3^3)
V2 = 11/162
V3 = 1/12

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
xlabel("$r$ distance to origin", "Interpreter","latex", 'FontSize', 14);
ylabel("$\frac{C(r)}{C_M}$ and $\frac{P(r)}{Q}$", "Interpreter","latex", ...
    'FontSize', 14);
legend('$\frac{C(r)}{C_M}$', '', '$\frac{P(r)}{Q}$', ...
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
Q = 2;
D = 1;
PR = piecewise((0<=r) & (r<=R), (1-r/R), r>R, 0);
ri = 0:1:R;
Ci = (0.5 * ri.^3/R) - ri.^2 + R^2;

Cid = (Q/(6 * 2 * D)) * Ci;

rR = ri / R;
CiCM = 0.5 * rR.^3 - rR.^2 + 1;
CiCM = (27/11) * CiCM;

% 
ro = R:1:5*R;
Co = (27* R/22) .* 1./ro;
Cod = (Q/(12 * 2 * D)) * R^3 * 1./ro;

figure
% plot(ri, CiCM, "-r", 'LineWidth',2,'MarkerSize',3)
% hold on
% plot(ro, Co, "-r", 'LineWidth',2,'MarkerSize',3)
% hold on

% plot(ri, Cid, "-g", 'LineWidth',2,'MarkerSize',3)
% hold on
% plot(ro, Cod, "-g", 'LineWidth',2,'MarkerSize',3)
% hold on
% 
% plot(ri, 2 .* Cid, "-c", 'LineWidth',2,'MarkerSize',3)
% hold on
% plot(ro, 2 .* Cod, "-c", 'LineWidth',2,'MarkerSize',3)
% hold on

% fplot(PR, [0 5*R], "-b", 'LineWidth',2,'MarkerSize',3);
% xlim([0 5*R])
% xlabel("Distance to origin $r$", "Interpreter","latex", 'FontSize', 14);
% ylabel("$\frac{P(r)}{Q}$ and $\frac{C(r)}{C_M}$", "Interpreter","latex", ...
%     'FontSize', 14);
% legend('$\frac{C(r)}{C_M}$', '', '$\frac{P(r)}{Q}$', ...
%     'Interpreter', 'latex', 'FontSize', 14);
% title("Product release $P(r)$ and concentration $C(r)$", ...,
%     "Interpreter","latex", 'FontSize', 14);
% grid on


%%
clc
clear all
syms r 

R = 10;
Q = 2;
D = 1;
PR = piecewise((0<=r) & (r<=R), (1-r/R), r>R, 0);
ri = 0:1:R;
Ci = (0.5 * ri.^3/R) - ri.^2 + R^2;

Cid = (Q/(6 * 2 * D)) * Ci;

rR = ri / R;
CiCM = 0.5 * rR.^3 - rR.^2 + 1;
CiCM = (27/11) * CiCM;

% 
ro = R:1:5*R;
Co = (27* R/22) .* 1./ro;
Cod = (Q/(12 * 2 * D)) * R^3 * 1./ro;

figure


plot(ri, 2 .* Cid, "-c", 'LineWidth',2,'MarkerSize',3)
hold on
plot(ro, 2 .* Cod, "-c", 'LineWidth',2,'MarkerSize',3)
hold on

plot(ri, Cid, "-g", 'LineWidth',2,'MarkerSize',3)
hold on
plot(ro, Cod, "-g", 'LineWidth',2,'MarkerSize',3)
hold on

xlabel("Distance to origin $r$", "Interpreter","latex", 'FontSize', 14);
ylabel("$C(r)_D$ and $C(r)_{2D}$", "Interpreter","latex", ...
    'FontSize', 14);
legend('$C(r)_D$', '', '$C(r)_{2D}$', '', ...
    'Interpreter', 'latex', 'FontSize', 14);
title("$C(r)_D$ vs. $C(r)_{2D}$", ...,
     "Interpreter","latex", 'FontSize', 14);
grid on
saveas(gcf,"concentration_d_2d",'pdf')

