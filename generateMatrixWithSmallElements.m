% Function for Test Case 4: Matrix with Small Elements
function A = generateMatrixWithSmallElements(n)
    % Generate a matrix with small elements, Hermitian, pentadiagonal, and positive definite
    A = diag(1e-3*ones(n,1)) + diag(1e-4*ones(n-1,1),1) + diag(1e-4*ones(n-1,1),-1);
    A = A + diag(1e-5*ones(n-2,1),2) + diag(1e-5*ones(n-2,1),-2);
    A = A + A'; % Ensuring Hermitian
end