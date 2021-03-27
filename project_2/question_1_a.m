%%
clc
clear all

C0 = 10;
tau=1;

format long g;
format compact;
fontSize = 20;
% Create the t coordinates from 0 to 20 every 0.5 units.
t = 0 : 0.5 : 20;
Y = C0 * exp(-t/tau);

numReplicates = 6;
Y5 = repmat(Y, [1, numReplicates]);
% Plot the replicated data.
plot(Y5, 'b-', 'LineWidth', 2, 'MarkerSize', 15);
grid on;
title("$C(t)=C_0 \exp(-\frac{t}{\tau})$",  "Interpreter","latex", 'FontSize', fontSize);
xlabel("t", 'FontSize', 14);
ylabel("C(t)", 'FontSize', 14);
saveas(gcf,"exp_tau",'pdf')