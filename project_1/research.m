%%
syms s k1 k2 k3  k4
d = s^2 + (k2 + k3 + k4) .* s + k2 .* k4
%simplify(d)
solve(d, s)

%%
syms x
solve(x^2 + 2.* x + 5, x)