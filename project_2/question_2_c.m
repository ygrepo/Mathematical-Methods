%%
clc
clear all
syms y(x) 

eqn = x * diff(y,2) + 2 * diff(y,1)  == 0;
S = dsolve(eqn)


%%
clc
clear all
syms y(x) Q D R
eqn = x * diff(y,2) + 2 * diff(y,1)  == Q/D * x * (x/R - 1);
%e = exp(1);
%cond = [y(1)==1, y(e) == 2 * e];
S = dsolve(eqn)
simplify(S)