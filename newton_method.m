format long;
f=@(x) (x^3)-(2*x)-5;
dfdx=@(x) 2*(x^2)-2;

c=0;
while abs(f(c))>10^(-8)
    c=c-f(c)/dfdx(c);
end

fprintf('%d\n',c);