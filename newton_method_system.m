format long;
f=@(x,y) [x+(y^2)-4; y-(x^2)-1];
Jf=@(x,y) [1 2*y; -2*x 1];

x0=[0.5;1];
while norm(f(x0(1),x0(2)))>10^(-8)
    x0=x0-Jf(x0(1),x0(2))\f(x0(1),x0(2));
end

fprintf('%d\n',x0);