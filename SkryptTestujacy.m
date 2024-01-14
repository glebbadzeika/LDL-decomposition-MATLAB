

numTestCases = 6;
n = 5; 
residuals = cell(numTestCases, 1); 

times = zeros(numTestCases, 1);

for i = 1:numTestCases
   
    switch i
        case 1
            A = generateWellConditionedMatrix(n);
        case 2
            A = generateIllConditionedMatrix(n);
        case 3
            A = generateLargeMatrix(n);
        case 4
            A = generateMatrixWithSmallElements(n);
        case 5
            A = generateMatrixWithStructuredPattern(n);
            
        case 6
            A = generateMatrixWithRandomNoise(n);
            
    end

    B = complex(randn(n, n), randn(n, n));

    
    tic;
    X = solveLDLH(A, B);
    times(i) = toc;

    
    residual = X * A - B;
    residuals{i} = residual;
   
    disp(times(i));
    % disp(residuals(i));

end

% Visualization
for i = 1:numTestCases
    figure;
    heatmap(abs(residuals{i}));
    title(['Residual Heatmap for Test Case ', num2str(i)]);
end



% Computational Time
figure;
plot(1:numTestCases, times, '-o');
title('Computational Time for Each Test Case');
xlabel('Test Case Number');
ylabel('Time (seconds)');


