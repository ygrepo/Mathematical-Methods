%%
clc;
clear all;


X = 0:2;
X = linspace(0, 2, 100);
X = X';
fun = @(x)x^2;
Y = get_Y(fun, X);

trapz(X, Y)
trapz_v2(X, Y)

function Y=get_Y(fun, X)
n = size(X,1);
Y = zeros(n,1);
for i=1:n
    Y(i) = fun(X(i));
end
end

function res = trapz_v2(X,Y)
n = size(X,1);
res = zeros(n,1);
for i=1: n
    total_area = 0;
    for j=1: i-1
        f_value_j_1 = Y(j);
        f_value_j = Y(j+1);
        dX = X(j+1) - X(j);
        area = dX * ((f_value_j_1 + f_value_j)/2);
        total_area = total_area + area;
    end
    res(i) = total_area;
end

end

function res = trapz_v(X,Y)
n = size(X,1);
res = zeros(n,1);
for i=1: n
    total_area = 0;
    for j=2: i
        f_value_j_1 = Y(j-1);
        f_value_j = Y(j);
        dX = X(j) - X(j-1);
        area = dX * ((f_value_j_1 + f_value_j)/2);
        total_area = total_area + area;
    end
    res(i) = total_area;
end

end


function y = square(x)
 value = x^2;
end
