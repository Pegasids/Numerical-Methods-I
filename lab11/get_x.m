% function to get all x's with equal spacing h.
% eg. x_list = [0,h,2h,...,x]
function x_list = get_x(x,h)
    x_list = [];
    for i = 0:x/h
        x_list = [x_list,i*h];
    end
end