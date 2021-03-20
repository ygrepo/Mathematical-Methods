%%
syms x n
y=cosh(x) * cos(n * pi * x)
int(y,-1,1)