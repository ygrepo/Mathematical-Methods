%%
clear all;
close all;
clc;
format long g

tau_T = [.1, 0.01, 0.001, 0.0001];
k = 10;
y = zeros(4,1);

for i=1:4
    tau_T_value = tau_T(i);
    v = 1 + (2 * k * pi * tau_T_value)^2;
    v = v^2;
    y(i,1) = tau_T_value^2 * (1/v) * (1 + 4 * pi^2 * tau_T_value^2 * k^2);
end

figure
logtaut= log10(tau_T);
logy = log10(y);
%plot(logtaut, logy, "r-", 'LineWidth',1,'MarkerSize',3);
%plot(tau_T, y, "r-", 'LineWidth',1,'MarkerSize',3);

loglog(tau_T, y, "r-", 'LineWidth',1,'MarkerSize',3);
xlabel("$\log_{10}(\frac{\tau}{T})$", "Interpreter", "latex", 'FontSize', 14);
ylabel("$\log_{10}(\frac{P_k}{2 * C0^2})$", "Interpreter","latex", 'FontSize', 14);
title("Loglog plot  $\frac{p_k}{2 C_0^2}$ vs. $\frac{\tau}{T}$","Interpreter","latex", 'FontSize', 14); 
legend('$k=10$', ...
    'Interpreter', 'latex', 'FontSize', 14);
grid on
saveas(gcf,"power_vs_smaller_pulse",'pdf')