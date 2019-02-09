%Canopus Tong
%1412275
%Lab3
%
%Description:
%This code solves a system of nonlinear equations 
%using Newton's method with tolerance of 10^-4.
%
%Addition:
%Functions and their partial derivatives are defined
%in separate m-files, f1.m, f2.m, f3.m.
%
%Cite: https://www.mathworks.com/matlabcentral/answers/38732-getting-first-element-of-a-function-output

format long;

x0=[2;2;2];

%keep looping until the norm of [f1,f2,f3] is within the accepted tolerance
while norm3d([subsref(f1(x0),struct('type','()','subs',{{1}})), subsref(f2(x0),struct('type','()','subs',{{1}})), subsref(f3(x0),struct('type','()','subs',{{1}}))])>10^(-4)
    %x0 = x0-J(x0)^-1/[f1;f2;f3], where J(x0) = [?f1/?dx ?f1/?dy ?f1/?dz; ?f2/?dx ?f2/?dy ?f2/?dz; ?f3/?dx ?f3/?dy ?f3/?dz]
    x0=x0-[subsref(f1(x0),struct('type','()','subs',{{2}})) subsref(f1(x0),struct('type','()','subs',{{3}})) subsref(f1(x0),struct('type','()','subs',{{4}})); subsref(f2(x0),struct('type','()','subs',{{2}})) subsref(f2(x0),struct('type','()','subs',{{3}})) subsref(f2(x0),struct('type','()','subs',{{4}})); subsref(f3(x0),struct('type','()','subs',{{2}})) subsref(f3(x0),struct('type','()','subs',{{3}})) subsref(f3(x0),struct('type','()','subs',{{4}}))]\[subsref(f1(x0),struct('type','()','subs',{{1}})); subsref(f2(x0),struct('type','()','subs',{{1}})); subsref(f3(x0),struct('type','()','subs',{{1}}))];
end

fprintf('Solution:\nx = %f\ny = %f\nz = %f\n',x0(1,1),x0(2,1),x0(3,1));

%Used to calcuaute the norm of vector in R3.
%input: [a,b,c];  output: long  
function output = norm3d(v)
    output = sqrt((v(1)^2)+(v(2)^2)+(v(3)^2));
end
