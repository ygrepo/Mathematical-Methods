%%
clear all;
close all;
clc;
format long g

tau_T = [.1, 0.01];
k = [1, 10, 20, 40, 50, 80, 100];
y = zeros(2,7);

for i=1:2
    tau_T_value = tau_T(i);
    for j =1:7
        freq = k(j);
        v = 1 + (2 * freq * pi * tau_T_value)^2;
        v = v^2;
        y(i,j) = tau_T_value^2 * (1/v) * (1 + 4 * pi^2 * tau_T_value^2 * freq^2);
    end
end

figure

logk= log10(k);
logy = log10(y);
plot(logk, logy(1, :), "r-", 'LineWidth',1,'MarkerSize',3);
% loglog(y(1, :), "r-", 'LineWidth',1,'MarkerSize',3);
hold on
plot(logk, logy(2, :), "b-", 'LineWidth',1,'MarkerSize',3);
% loglog(y(2, :), "k-", 'LineWidth',1,'MarkerSize',3);
xlabel("$\log_{10}(k)$ - log of frequency value", "Interpreter","latex", 'FontSize', 14);
ylabel("$\log_{10}(\frac{Pk}{2 * C0^2})$", "Interpreter","latex", 'FontSize', 14);
title("Loglog plot of $\frac{p_k}{2 C_0^2}$","Interpreter","latex", 'FontSize', 14); 
legend('$\frac{\tau}{T} = .1$','$\frac{\tau}{T} = .01$', 'Interpreter', 'latex', 'FontSize', 14);
grid on
saveas(gcf,"power_vs_tau_T",'pdf')


%%
clear all;
close all;
clc;
format long g

tau_T = [.1, 0.01];
k = [1, 10, 100, 1000, 10000];
y = zeros(2,5);

for i=1:2
    tau_T_value = tau_T(i)
    for j =1:5
        freq = k(j);
        v = 1 + (2 * freq * pi * tau_T_value)^2;
        v = v^2;
        y(i,j) = tau_T_value^2 * (1/v) * (1 + 4 * pi^2 * tau_T_value^2 * freq^2);
    end
end

figure

loglog(y(1, :), "r-", 'LineWidth',1,'MarkerSize',3);
hold on
loglog(y(2, :), "k-", 'LineWidth',1,'MarkerSize',3);
xlabel("$\log(k)$ - log of frequency value", "Interpreter","latex", 'FontSize', 14);
ylabel("Log value of $\frac{Pk}{2 * C0^2}$", "Interpreter","latex", 'FontSize', 14);
title("Log value of $\frac{p_k}{2 C_0^2}$","Interpreter","latex", 'FontSize', 14); 
legend('$\frac{\tau}{T} = .1$','$\frac{\tau}{T} = .01$', 'Interpreter', 'latex', 'FontSize', 14);
grid on
