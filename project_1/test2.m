%%
clear all;
close all;
clc;
format long g
[ts, cp, alpha_1, alpha_2, A, B] = get_parameters();

ts = ts(1:10);
cp = cp(1:10);

% function ct = convolution_by_trapz(ts, cp, alpha)
n = size(ts,1);
ct = zeros(n,1);

f_value_loop = zeros(n,1);
%for i=1: n
for i=1:n
    S = 0;
    for j=2: i
        fprintf("i:%d, j:%d\n", i, j)
        dt_j = ts(j) - ts(j-1);
        fprintf("dt_j:%8.5f\n", dt_j)
        f_value_j_1 = alpha_function(i, j-1, alpha_1, ts, cp);
        f_value_loop(j-1) = f_value_j_1;
        f_value_j = alpha_function(i, j, alpha_1, ts, cp);
        f_value_loop(j) = f_value_j;
        area = dt_j * ((f_value_j_1 + f_value_j)/2);
        S = S + area;
    end
    fprintf("i=%d, integral:%8.5f\n", i, S)
    ct(i) = S;
end

%%
dt = ts(n) - ts
exp_f = exp(-alpha_1 * dt);
f_value = exp_f .* cp
trapz(ts, f_value)
%%
f_value
f_value_loop
%%
plot(ts, f_value)

%%
conv = dsp.Convolver('Method','Time Domain');
ct_conv = conv(f_value_loop, cp);
%%
size(ct_conv)
size(ct)