% Function for Test Case 5: Matrix with Random Noise
function A = generateMatrixWithRandomNoise(n)
    % Base matrix - well-conditioned and positive definite
    A = diag(10*ones(n,1)) + diag(2*ones(n-1,1),1) + diag(2*ones(n-1,1),-1);
    A = A + diag(ones(n-2,1),2) + diag(ones(n-2,1),-2);

    % Add random noise in a Hermitian manner
    noiseLevel = 0.1;  % Adjust the noise level
    noise = noiseLevel * randn(n);
    A = A + triu(noise, 1) + triu(noise, 1)'; % Ensuring Hermitian
end