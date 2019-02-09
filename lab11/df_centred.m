% centred difference forumla
% *require function f
function y = df_centred(x,h)
    y = (1/(2*h))*(f(x+h)-f(x-h));
end