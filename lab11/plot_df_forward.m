% Plot the function df_forward
% from interval 0 to x, with equal spacing h.
% *require function f
function plot_df_forward(x,h)
    x_list = get_x(x,h);
    y_list = [];
    for i = 1:size(x_list,2)
        y_list = [y_list, df_forward(x_list(i),h)];
    end
    plot(x_list,y_list);
end