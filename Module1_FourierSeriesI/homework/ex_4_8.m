clear all;
close all;
clc;

%% Plot x sin(x) f for [0, 2pi]
t = tiledlayout(2,2,'TileSpacing','Compact');

nexttile
x = linspace(-pi,pi);
plot(x, x .* sin(x), "LineWidth",1,"MarkerSize",3);
title('Even Extension','Interpreter','latex');
xlabel("x");
ylabel("f(x)")
tick_values = -4:4;
xlim([-4 4]);
xticks(tick_values)
grid on

nexttile
x1 = linspace(0,pi);
x2 = linspace(-pi,0);
plot(x1, x1 .* sin(x1),"r", x2, -x2 .* sin(x2), "r", "LineWidth",1,"MarkerSize",3);
title('Odd Extension','Interpreter','latex');
xlabel("x");
ylabel("f(x)")
xlim([-4 4]);
xticks(tick_values)
grid on

saveas(gcf,'problem_4_8.pdf')

%% Plot function defined in 4.26 

figure, hold on, grid on
xlim([-pi pi]);
xlabel("x");
ylabel("f(x)")
syms y(x);
y = piecewise((-pi<=x) & (x<0), -x .* (pi+ x), (0<=x) & (x<pi), x.* (x - pi));
x = linspace(-pi,pi);
fplot(y)
saveas(gcf,'problem_4_26.pdf')


