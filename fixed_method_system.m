format long
g=@(x,y) [sqrt(y-1); sqrt(4-x)];

a=[1;1];
while norm(a-g(a(1),a(2)))>10^(-8)
    a=g(a(1),a(2));
end

fprintf('%d\n',a);