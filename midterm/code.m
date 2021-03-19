
%%
clc
clear all
syms y(t) t
Dy = diff(y)
eqn = diff(y,2) + 4*diff(y) - 5*y;
S = dsolve(eqn,y(0)==0,Dy(0)==1)

%%
clc
clear all
syms s
M = [s+20 -10 -10; 10 -(s+20) 10; 10 10 -(s+20)];
B = det(M);
simplify(B)

%%
A = [20 -10 -10; 0 -(s+20) 10; 0 10 -(s+20)];
DA = det(A);
simplify(DA);
%s^2+40*s+300

roots([1 40 300])

%%
% (s + 10) / (s (s+30))

b = [0 1 10];
a = [1 30 0];
[r,p,k] = residue(b,a)

%%
clc
clear all
syms s

B = [s+20 20 -10; 10 0 10; 10 0 -(s+20)];
DB = det(B);
simplify(DB)

%%
clc
clear all
syms s

C = [s+20 -10 20; 10 -(s+20) 0; 10 10 0];
DC = det(C);
simplify(DC)

%%
clc
clear all
syms y(t) t
eqn = diff(y,2) - y ;
S = dsolve(eqn)

%%
clc
clear all
syms t y(t)
eqn = diff(y,2) - y == exp(t);
S = dsolve(eqn);
pretty(S)

%%
clc
clear all
syms x y(x)
eqn = x^2 * diff(y,2) +x * diff(y,1) - y == x;
S = dsolve(eqn);
pretty(S)


%%
clc
clear all
syms x y(x)
eqn = x^2 * diff(y,2) + x * diff(y,1) - y == x;
Dy = diff(y,x);
cond = [y(exp(1))==0, Dy(exp(1)) == 2];
S = dsolve(eqn, cond)
pretty(S)

%%
clc
clear all
syms x y
y = 1/4 * x - (3/4) * exp(2) * 1/x + (x * log(x))/2
simplify(y)