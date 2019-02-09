%Canopus Tong
%1412275
%Lab2
%
%Description:
%This code finds the root of f(x) using Newton's method
%for Xo = 8,5,2 and tolerance = 10^-6,10^-10.

format long;

xo = [8 5 2];
tolerance = [10^(-6) 10^(-10)];
f = @(x) (x^2)*cos((x^2/100)-25)-(x^3)+5;
dfdx = @(x) -(((x^3)*sin((x^2/100)-25))/50)-(3*(x^2))+(2*x*cos((x^2/100)-25));


for e = 1:length(tolerance) %iterates over the tolerance list
    for x = 1:length(xo) %iterates over the Xo list
        counter=1; %number of iteration
        c = xo(x); %Xo
        while abs((c-(f(c)/dfdx(c)))-c)>=tolerance(e) %loop to find root to within the appropriate tolerance
            c = c-(f(c)/dfdx(c)); %newton's method
            counter = counter+1; %increment counter by 1
        end
        fprintf('%d iterations are needed for Xo = %d with a tolerance of %e. \n', counter,xo(x),tolerance(e));
    end
end

