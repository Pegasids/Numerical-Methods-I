%Canopus Tong
%1412275
%
%Description:
% This code solve Ax = b given matrix A and vector b.
% And return the solution x, using Guass Elimination w/ pivoting.

function x = Gauss_Elim(A,b)
    n = size(A,1); % n is the number of row of A
    for col = 1:n
        max = -1;
        % find max position for each column before pivoting 
        for row = col:n
            num = abs(A(row,col));
            if num > max
                max = num;
                max_pos = row;
            end
        end
        % swap rows/pivoting
        if col ~= max_pos
            A([col max_pos],:) = A([max_pos col],:);
            b([col max_pos],:) = b([max_pos col],:);
        end
        % reduce to row echelon form 
        for row = col:n
            if row ~= col
               if A(row,col) ~= 0
                   c = A(row,col)/A(col,col);
                   A(row,:) = A(row,:) - c*A(col,:);
                   b(row,:) = b(row,:) - c*b(col,:);
               end
            end
        end
    end
    % calculate X
    x = zeros(n,1);
    for col = n:-1:1
        for row = col:-1:1
            if row == col % calculate Xn from bottom up
                x(row,1) = b(row,1)/A(row,col);
            else % bn = bn - A(row,col)*Xn
                b(row,1) = b(row,1)-(A(row,col)*x(col,1));
            end
        end    
    end
end
