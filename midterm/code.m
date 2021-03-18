
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

b = [1 10];
a = [1 30 0];
[r,p,k] = residue(b,a)

%%
clc
clear all
syms s

B = [s+20 20 -10; 10 0 10; 10 10 -(s+20)];
DB = det(B);
simplify(DB)

%%
clc
clear all
syms s

C = [s+20 -10 20; 10 -(s+20) 0; 10 10 0];
DC = det(C);
simplify(DC)
