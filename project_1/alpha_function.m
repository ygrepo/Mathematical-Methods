
function f_value = alpha_function(t1, t2, alpha, ts, cp)
    diff_t = ts(t1) - ts(t2);
    fprintf("diff_t: %8.5f\n", diff_t)
    exp_f = exp(-alpha * diff_t);
    fprintf("cp:%8.5f\n",  cp(t2))
    f_value = exp_f * cp(t2);
    fprintf("exp_f:%8.5f, f_value:%8.5f\n", ...
              exp_f, f_value)
