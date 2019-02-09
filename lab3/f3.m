%input = [x;y;z]
%output = [f(x,y,z), dfdx(x,y,z), dfdy(x,y,z), dfdz(x,y,z)]
function output = f3(v)
    x=v(1,1); y=v(2,1); z=v(3,1);
    f = 1+z-x-y^3;
    dfdx = -1;
    dfdy = -3*(y^2);
    dfdz = 1;
    output = [f,dfdx,dfdy,dfdz];
end