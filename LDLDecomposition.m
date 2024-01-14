function [L, D] = LDLDecomposition(A)



    % Initialize L and D
    n = size(A, 1);
    L = eye(n);
    D = zeros(n, 1);

    % Perform LDL^H decomposition
    for i = 1:n
        D(i) = A(i, i) - L(i, 1:i-1) * diag(D(1:i-1)) * L(i, 1:i-1)';
        for j = (i+1):min(i+2, n)  % Considering pentadiagonal structure
            L(j, i) = (A(j, i) - L(j, 1:i-1) * diag(D(1:i-1)) * L(i, 1:i-1)') / D(i);
        end
    end

    % Convert D to diagonal matrix
    D = diag(D);
end
