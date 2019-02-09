% forward difference formula
% *require function f
function y = df_forward(x,h)
    y = (1/h)*(f(x+h)-f(x));
end