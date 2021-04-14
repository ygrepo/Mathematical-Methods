%%
clc
clear all
syms v x y
v = (y* cos(y) + x * sin(y)) * exp(x)

dudy = -diff(v,x);
u = int(dudy,y);
dudx = diff(u,x);
dvdy = diff(v,y);
dudy = diff(u,y);
dvdx = diff(v,x);


%%
clc
clear all
syms x y
y = log(x)^(1/x);
diff(y,x);
limit(y, x, Inf)
y2 = log(log(x));
diff(y2,x);
y3 = (x^(log(x)))^(1/x);
simplify(log(log(x)* log(x)));
limit(y3, x, Inf)

%%
clc
clear all
syms z y
y = sinh(1/z)
limit(y,z,0);

%%
clc
clear all
z = 1/2 + 2 * exp(i*pi/4)
(1+2*sqrt(2))/2
%plot(z, 'o');
syms z
poles(1/sin(pi*z))
