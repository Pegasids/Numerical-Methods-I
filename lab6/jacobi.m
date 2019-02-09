% ================== FUNCTION ASSOCIATED WITH lab6sol.m ==================

% Function jacobi.m for LAB 6 EXERCISE

% This function solves Ax = b using Jacobi iteration given a matrix A,
% vector b, and initial guess x_0.

function [] = jacobi(A,b,XO,tol)
n = length(A(1,:));
x = XO; % x is the solution vector
N = 1000; % max number of iterations

disp('SOLVING USING JACOBI METHOD:')

k = 1;
while k <= N
    for i = 1:n
        sum = 0;
        for j = 1:i-1
            sum = sum + A(i,j)*XO(j);
        end
        for j = i+1:n
            sum = sum + A(i,j)*XO(j);
        end
        x(i) = (b(i) - sum)/A(i,i);
    end
    if norm(x - XO, inf) < tol
        disp(['System converged in ', num2str(k), ' iterations.']);
        disp('The solution to Ax = b is x = ');
        disp(x);
        break
    end
    k = k + 1;
    XO = x;
end
if k > N
   disp('CONVERGENCE FAILURE - Max number of iterations exceeded!') 
end
end
