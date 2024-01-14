function A = generateWellConditionedMatrix(n)
    % Generate a Hermitian, pentadiagonal, and well-conditioned matrix
    A = diag(10*ones(n,1)) + diag(2*ones(n-1,1),1) + diag(2*ones(n-1,1),-1);
    A = A + diag(ones(n-2,1),2) + diag(ones(n-2,1),-2);
    A = A + A'; % Ensuring Hermitian
end
