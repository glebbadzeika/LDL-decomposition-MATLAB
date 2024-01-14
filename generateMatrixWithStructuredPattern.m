% Function for Test Case 5: Matrix with Structured Pattern
function A = generateMatrixWithStructuredPattern(n)
    % Generate a Hermitian, pentadiagonal matrix with a structured pattern
    pattern = linspace(1, 2, n);  
    A = diag(10*pattern) + diag(pattern(1:end-1),1) + diag(pattern(1:end-1),-1);
    A = A + diag(pattern(1:end-2),2) + diag(pattern(1:end-2),-2);
    A = A + A'; % Ensuring Hermitian
   
    A = A + n*eye(n); 
end