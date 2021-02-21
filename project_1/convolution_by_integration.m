function ct = convolution_by_integration(ts, cp, alpha)
n = size(ts,1);
ct = zeros(n,1);
for i=1: n
    S = 0;
    for j=2: i
        fprintf("i:%d, j:%d\n", i, j)
        dt_j = ts(j) - ts(j-1);
        fprintf("dt_j:%8.5f\n", dt_j)
        f_value_j_1 = alpha_function(i, j-1, alpha, ts, cp);
        f_value_j = alpha_function(i, j, alpha, ts, cp);          
        area = 0.5 * dt_j * (f_value_j_1 + f_value_j);
        S = S + area;
    end
    fprintf("i=%d, integral:%8.5f\n", i, S)
    ct(i) = S;
end