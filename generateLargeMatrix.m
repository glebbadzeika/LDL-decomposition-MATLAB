% Function for Test Case 3: Large Matrix
function A = generateLargeMatrix(n)
    % Generate a large, Hermitian, pentadiagonal, and positive definite matrix
    A = diag(100*ones(n,1)) + diag(3*ones(n-1,1),1) + diag(3*ones(n-1,1),-1);
    A = A + diag(2*ones(n-2,1),2) + diag(2*ones(n-2,1),-2);
    A = A + A'; % Ensuring Hermitian
end