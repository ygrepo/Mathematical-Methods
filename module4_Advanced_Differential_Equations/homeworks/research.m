%%
syms s;
lf = (s-2)/(s^2 + 2 .* s + 5);
f = ilaplace(lf)
pretty(f)
%%
syms t a
laplace( (t-a) * heaviside(t-a))

%%

b = [1 -2];
a = [1 2 5];
[r,p,k] = residue(b,a)
%%
solve(x^2 + 2.* x + 5, x)

%%
syms x
solve(x^2+5.*x+4,x)

%%
syms x y s
eqn1 = (s^2+2) * x + y == s/(s^2+1);
eqn2 = 2 * x + (s^2+3) * y == 1/(s^2+1);
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y])
X = linsolve(A,B)

%%
clc
clear all
b = [1 0 3 -1];
a = [1 2 6 8 4];
[r,p,k] = residue(b,a)

%%
syms s x y k1 k2 k3 k4 P
eqn1 = (s+(k2 + k3)) * x -k4 * y == k1 * P;
eqn2 = k3 * x - (s + k4) * y == 0;
[A,B] = equationsToMatrix([eqn1, eqn2], [x, y])
X = linsolve(A,B)

%%
clc
clear all
syms s k2 k3 k4
pretty(solve(s^2 + (k2 + k3 + k4) .* s + k2 .* k4, s))

%%
syms x
solve(x^2+4.*x+2,x)

%%
clear all;
close all;
clc;
syms s k2 k3 k4
b = [1 1];
a = [1 (2 + 1 + 1) 2 * 1];
[r,p,k] = residue(b,a)

%%
r1 = - 2^(1/2) - 2
r2 = 2^(1/2) - 2
k2 = 2 
k3 = 1
k4 = 1
(k4  + r1) / (r1 - r2)
-(k4  + r2) / (r1 - r2)


%%
clear all;
close all;
clc;
b = [1 0 0];
a = [1 0 5 4];
[r,p,k] = residue(b,a)

%%
syms y(t) a
eqn = diff(y,t) == a*y;
S = dsolve(eqn)

%%
syms y(x)
eqn = (x^2-1)^2*diff(y,2) + (x+1)*diff(y) - y == 0;
S = dsolve(eqn)


%%
clc
clear all
syms y(x)
eqn = x^2 * diff(y,2) - x * diff(y,1) + y == x;
S = dsolve(eqn)

%%
clc
clear all
syms y(x)
eqn = x^2 * diff(y,2) - x * diff(y,1) + y == x;
e = exp(1);
cond = [y(1)==1, y(e) == 2 * e];
S = dsolve(eqn, cond)

%%
syms y(t) t
eqn = diff(y, 2) - 2 * diff(y) + y == exp(t);
S = dsolve(eqn)

%%
clc
clear all
syms y(t) t
eqn = diff(y, 2) + 2 * diff(y) + y == exp(2 * t);
S = dsolve(eqn);
pretty(S)

%%
clc
clear all
syms y(x)
eqn = (x+1)^2 * diff(y,2) + 3 * (x+1) * diff(y,1) + y == x^2;
S = dsolve(eqn);
pretty(S)

%%
clc
clear all
syms y(x) n
eqn = diff(y,2) -  y == x^n;
S = dsolve(eqn);
pretty(S)
%%
clc
clear all
syms y(x) n
eqn = diff(y,2) - 2 * diff(y) +  y == 2 * x * exp(x);
S = dsolve(eqn);
pretty(S)

%%
clc
clear all
syms x(t) alpha
eqn = diff(x,2) + alpha * diff(x)  ==0 ;
S = dsolve(eqn);
pretty(S)


%%
syms x n
pretty(int(exp(x) .* x^n))
