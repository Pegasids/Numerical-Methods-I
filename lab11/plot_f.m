% Plot the function f
% from interval 0 to x, with equal spacing h.
% *require function f
function plot_f(x,h)
    x_list = get_x(x,h);
    y_list = [];
    for i = 1:size(x_list,2)
        y_list = [y_list, f(x_list(i))];
    end
    plot(x_list,y_list);
end