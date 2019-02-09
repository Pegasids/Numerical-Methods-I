%input = [x;y;z]
%output = [f(x,y,z), dfdx(x,y,z), dfdy(x,y,z), dfdz(x,y,z)]
function output = f1(v)
    x=v(1,1); y=v(2,1); z=v(3,1);
    f = x+exp(y*z-1)-2;
    dfdx = 1;
    dfdy = z*exp(y*z-1);
    dfdz = y*exp(y*z-1);
    output = [f,dfdx,dfdy,dfdz];
end