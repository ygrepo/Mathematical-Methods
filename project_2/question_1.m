%%
clear all;
close all;
clc;
format long g

tau_T = [.1, 0.01];
k = [1, 10, 100];
y = zeros(2,3);

for i=1:2
    tau_T_value = tau_T(i)
    for j =1:3
        freq = k(j)
        y(i,j) = tau_T_value^2 * (1 + 4 * pi^2 * tau_T_value^2 * freq^2);
    end
end

figure

loglog(y(1, :), "r-*", 'LineWidth',1,'MarkerSize',3);
hold on
loglog(y(2, :), "k-", 'LineWidth',1,'MarkerSize',3);
xlabel("$log(k)$ - log of frequency value", "Interpreter","latex", 'FontSize', 14);
ylabel("Log value of Pk/(2 * C0**2)", "Interpreter","latex", 'FontSize', 14);
title("Log value of $log{\frac{p_k}{2 C_0^2}}$","Interpreter","latex", 'FontSize', 14); 
legend('$\frac{\tau}{T} = .1$','$\frac{\tau}{T} = .01$', 'Interpreter', 'latex', 'FontSize', 14);
grid on


%%
clear all;
close all;
clc;
format long g

tau_T = [.1, 0.01, 0.001, 0.0001, 0.00001];
n = size(tau_T, 2)
k = [1, 10, 100, 1000];
m = size(k, 2)
y = zeros(n,m);

for i=1:n
    tau_T_value = tau_T(i)
    for j =1:m
        freq = k(j);
        y(i,j) = tau_T_value^2 * (1 + 4 * pi^2 * tau_T_value^2 * freq^2);
    end
end

figure
for i=1:n
    loglog(y(i, :),'LineWidth',1,'MarkerSize',3);
    hold on
end    

%%
tau_T = [.1, 0.01];
k = [1,2];
tan_value = zeros(2,2);
phi_k = zeros(2,2);
for i=1:2
    for j=1:2
        tan_value(i, j) = 2 * pi * k(i) * tau_T(j);
        phi_k(i,j) = atand(tan_value(i, j));
    end
end
tan_value
phi_k
