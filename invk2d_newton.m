format long;
f=@(x,y) [5*cos(x)+10*cos(x+y)-0; 5*sin(x)+10*sin(x+y)-15];
Jf=@(x,y) [-5*sin(x)-10*sin(x+y) -10*sin(x+y); 5*cos(x)+10*cos(x+y) 10*cos(x+y)];

x0=[1;1];
while norm(f(x0(1),x0(2)))>10^(-8)
    x0=x0-Jf(x0(1),x0(2))\f(x0(1),x0(2));
end

fprintf('%d\n',x0);