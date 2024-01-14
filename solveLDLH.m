function X = solveLDLH(A, B)
    % Ensure the matrix A is square and Hermitian
    if ~isequal(size(A), [size(A,1), size(A,1)])
        error('Matrix A must be square.');
    end
    if ~isequal(A, A')
        error('Matrix A must be Hermitian.');
    end
    if ~isposdef(A)
        error('Matrix A must be positive definite.');
    end
    % Perform LDL decomposition
    [L, D] = LDLDecomposition(A);

    % Step 1: Solve ZL^H = B for Z
    Z = B / L'; 

    % Step 2: Multiply Z by D
    Y = Z / D;

    % Step 3: Solve YL = X for X
    X = Y / L; 
end
