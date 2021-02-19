%%
clear all;
close all;
clc;
format long g
%%
workbook = "/Users/yg/code/github/mathematical-methods-en-585-615/project_1/project_1_extended_data.xlsx"
worksheet = "Sheet1"
data = import_data(workbook, worksheet) ;

%%

cp = data.Concentration(2:end);
ts = data.Time(2:end);
k1 = 0.102; 
k2 = 0.130;
k3 = 0.062;
k4 = .0068;
d = sqrt((k2 + k3 + k4)^2 -4 * k2 *k4);
alpha_1 = 0.5 * (k2 + k3 + k4  - d)
alpha_2 = 0.5 * (k2 + k3 + k4  + d)
A = (k1 * (k3 + k4 - alpha_1)) / (alpha_2 - alpha_1)
A_2 = (k1 * k3)  / (k2 + k3)

B = (k1 * (alpha_2 -k3 -k4)) / (alpha_2 - alpha_1)
B_2 = (k1 * k2)  / (k2 + k3)

%%
dx = diff(ts);
trapint = dot(dx,(cp(1:end-1) + cp(2:end))/2)
trapz(ts,cp)
%%
clc;
n = size(cp, 1);
ci = zeros(n, 1);

for i = 2: n
    i;
    ts_i = ts(1:i);
    cp_i = cp(1:i);
    dt = zeros(i,1);
    dt(2:end) = diff(ts_i);
    exp_f = exp(-alpha_1 .* dt);
    f_value = exp_f .* cp_i;
    v = zeros(i,1);
    v(2:end) = (f_value(1:end-1) + f_value(2:end))/2;
    ci(i) = dot(dt, v);
end
ci = A .* ci;
%%
ci
