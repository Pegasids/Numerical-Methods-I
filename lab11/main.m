%Canopus Tong
%1412275
%Lab11
%
%Description:
% Given a function f, this code approximate f'(x) and plots them using the
% forward differences formula and the centred differences formula.
% Two graphs will be generated respectively. Each graph will plot f(x) and
% three other curves using h as 0.1, 0.05 and 0.01.
%
%Addition:
% f(x), forward, centred functions and their plot functions...etc are
% defined in separate m-files.
% 1)f.m  2)df_forward.m  3)df_centred.m  4)plot_f.m  5)plot_df_forward.m
% 6)plot_df_centred.m  7)get_x.m

format long;
h = [0.1,0.05,0.01];
x = [0,3];

% setup figures
f1 = figure;
f2 = figure;

% 1st plot - foward difference curves
figure(f1);
hold on;

plot_f(x(2),0.001);
for i = 1:size(h,2)
    plot_df_forward(x(2),h(i));
end

title('f(x) and df/dx using 1st-order forward differences');
xlabel('x');
ylabel('f(x) and df/dx');
legend('f(x)','df/dx with h=0.1','df/dx with h=0.05','df/dx with h=0.01');


% 2nd plot - centred difference curves
figure(f2);
hold on;

plot_f(x(2),0.001);
for i = 1:size(h,2)
    plot_df_centred(x(2),h(i));
end

title('f(x) and df/dx using 1st-order centred differences');
xlabel('x');
ylabel('f(x) and df/dx');
legend('f(x)','df/dx with h=0.1','df/dx with h=0.05','df/dx with h=0.01');
