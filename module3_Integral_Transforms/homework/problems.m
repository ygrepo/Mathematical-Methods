clear all;
close all;
clc;

%% Plot x sin(x) f for [0, 2pi]
syms w
y = exp(i .* w .* t)

%%
T = 2;
syms y(t);
y = piecewise(0<=t<T/2,2.* t/T, T/2<=t<T, 2 .* (1-t/T));
t = linspace(0,T);
fplot(y,[0 2],'b')
title('g(t)','Interpreter','latex');
xlabel("t");
ylabel("g(t)")
xlim([0 2]);
tick_values = 0:2;
xticks(tick_values)

saveas(gcf,'problem_5_26.pdf')


%%
tint=0;
tfinal=10; 
tstep=.01; 
t=tint:tstep:tfinal;
x=1*((t>=0)&(t<=2)); 
subplot(3,1,1)
plot(t,x) 
axis([0 5 0 2])
grid on

h= (exp(-t)).*((t>0)&(t<5)); 
subplot(3,1,2), plot(t,h) 
axis([0 5 0 2])
grid on


t2=2*tint:tstep:2*tfinal; 
y=conv(x,h)*tstep; 
subplot(3,1,3),plot(t2,y) 
axis([0 5 0 2])
grid on

%%
syms a t
f = exp(-a*t);
laplace(f)

%%
clear all;
syms t;
x = heaviside(t)-heaviside(t-2);
l1 = laplace(x);
pretty(l1);
h = exp(-t) .* heaviside(t)-heaviside(t-5);
l2 = laplace(h);
pretty(l2)

y = ilaplace(l1 .* l2);
pretty(y)
fplot(y, [0 10])
axis([0 5 0 2])
grid on

%%
clear all;
close all;
clc;
syms t;
x = heaviside(t)-heaviside(t-2);
l1 = laplace(x);
pretty(l1);
h = 6.75 .* (exp(-t/6) - exp(-t/4));
l2 = laplace(h);
pretty(l2)


y = ilaplace(l1 .* l2);
pretty(y)
fplot(y, [0 30])
axis([0 30 0 2])
grid on

%%
clear all;
close all;
clc;
syms t;
x = (t-2) .* heaviside(t-2)
%x = (t-2)
l = laplace(x);
pretty(l)
