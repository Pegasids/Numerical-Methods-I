%input = [x;y;z]
%output = [f(x,y,z), dfdx(x,y,z), dfdy(x,y,z), dfdz(x,y,z)]
function output = f2(v)
    x=v(1,1); y=v(2,1); z=v(3,1);
    f = -1.5+y+0.5*x*z^2;
    dfdx = (z^2)/2;
    dfdy = 1;
    dfdz = x*z;
    output = [f,dfdx,dfdy,dfdz];
end