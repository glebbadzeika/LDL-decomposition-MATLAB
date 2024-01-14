% Function for Test Case 2: Ill-Conditioned Matrix
function A = generateIllConditionedMatrix(n)
    % Generate a Hermitian, pentadiagonal, and ill-conditioned matrix
    A = diag(linspace(1, 1e10, n)) + diag(0.5*ones(n-1,1),1) + diag(0.5*ones(n-1,1),-1);
    A = A + diag(0.1*ones(n-2,1),2) + diag(0.1*ones(n-2,1),-2);
    A = A + A'; % Ensuring Hermitian
end