%Canopus Tong
%1412275
%Lab9
%
%Description:
% This code fit the given data using a linear least square
% and reports the total error.

format long;
% given data
data = [0.0 0.3; 0.4 1.1; 1.1 3.0; 1.7 5.8; 2.0 7.7;];
% linear least square
sum_of_x_square = 0;
sum_of_y = 0;
sum_of_xy = 0;
sum_of_x = 0;
m = size(data,1);

for idx = 1:m
    x = data(idx,1);
    y = data(idx,2);
    sum_of_x_square = sum_of_x_square + x^2;
    sum_of_y = sum_of_y + y;
    sum_of_xy = sum_of_xy + x*y;
    sum_of_x = sum_of_x + x;
end
% formula from textook
a0 = (sum_of_x_square*sum_of_y-sum_of_xy*sum_of_x)/(m*sum_of_x_square-sum_of_x^2);
a1 = (m*sum_of_xy-sum_of_x*sum_of_y)/(m*sum_of_x_square-sum_of_x^2);

% calculate error
e = 0;
for idx = 1:m
    x = data(idx,1);
    y = data(idx,2);
    e = e + (y-a1*x-a0)^2;
end
fprintf('The total error is %e.\n',e);