clear all;
close all;
clc;

%% Plot x sin(x) fpor [0, 2pi]
figure, hold on, grid on
xlim([-pi pi]);
xlabel("x");
ylabel("f(x)")
x = linspace(-2*pi,2*pi);
title('$f(x)= x \sin(x)$','Interpreter','latex');
plot(x, x .* sin(x), "b-*", 'LineWidth',1,'MarkerSize',3);
legend('x sin(x)', 'FontSize', 14, 'Location', 'NorthEast');

saveas(gcf,'problem_4_8.pdf')
