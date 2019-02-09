%Canopus Tong
%1412275
%Lab9
%
%Description:
% This code fit the given data using a quadratic least square
% and reports the total error.

format long;
% given data
data = [0.0 0.3; 0.4 1.1; 1.1 3.0; 1.7 5.8; 2.0 7.7;];
% quadratic least square
sum_of_x_power0 = 0;
sum_of_x_power1 = 0;
sum_of_x_power2 = 0;
sum_of_x_power3 = 0;
sum_of_x_power4 = 0;
sum_of_y = 0;
sum_of_yx = 0;
sum_of_yx_power2 = 0;
m = size(data,1);

for idx = 1:m
    x = data(idx,1);
    y = data(idx,2);
    sum_of_x_power0 = sum_of_x_power0 + 1;
    sum_of_x_power1 = sum_of_x_power1 + x;
    sum_of_x_power2 = sum_of_x_power2 + x^2;
    sum_of_x_power3 = sum_of_x_power3 + x^3;
    sum_of_x_power4 = sum_of_x_power4 + x^4;
    sum_of_y = sum_of_y + y;
    sum_of_yx = sum_of_yx + y*x;
    sum_of_yx_power2 = sum_of_yx_power2 + y*x^2;
end
% solve for x = [a0;a1;a2;]
% Ax = b
A = [sum_of_x_power0 sum_of_x_power1 sum_of_x_power2;
     sum_of_x_power1 sum_of_x_power2 sum_of_x_power3;
     sum_of_x_power2 sum_of_x_power3 sum_of_x_power4;];
b = [sum_of_y;
     sum_of_yx;
     sum_of_yx_power2;];
 
x = Gauss_Elim(A,b);

% calculate error
e = 0;
f = @(X) x(1,1) + x(2,1)*X + x(3,1)*X^2;
for idx = 1:m
    x = data(idx,1);
    y = data(idx,2);
    e = e + (y-f(x))^2;
end
fprintf('The total error is %e.\n',e);