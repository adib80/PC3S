%Weighting Process
% Define the input file name
inputFileName = 'input.xls';

% Read the fuzzy pairwise comparison matrix from the 'preferences' sheet
fuzzyComparisonMatrix = readmatrix(inputFileName, 'Sheet', 'preferences');

% Get the number of criteria based on the matrix dimensions
nCriteria = size(fuzzyComparisonMatrix, 1);

% Reshape the matrix to the correct dimensions (assuming the input is flat)
fuzzyComparisonMatrix = reshape(fuzzyComparisonMatrix, [nCriteria, nCriteria, 3]);

% Calculate the fuzzy synthetic extent for each criterion
fuzzyExtent = cell(nCriteria, 1);
for i = 1:nCriteria
    lowerSum = 0;
    middleSum = 0;
    upperSum = 0;
    
    for j = 1:nCriteria
        lowerSum = lowerSum + fuzzyComparisonMatrix(i, j, 1);
        middleSum = middleSum + fuzzyComparisonMatrix(i, j, 2);
        upperSum = upperSum + fuzzyComparisonMatrix(i, j, 3);
    end
    
    fuzzyExtent{i} = [1 / upperSum, 1 / middleSum, 1 / lowerSum];
end

% Calculate the degree of possibility for each criterion
degreePossibility = zeros(nCriteria, nCriteria);
for i = 1:nCriteria
    for j = 1:nCriteria
        if i ~= j
            if fuzzyExtent{i}(2) >= fuzzyExtent{j}(2)
                degreePossibility(i, j) = 1;
            else
                degreePossibility(i, j) = (fuzzyExtent{j}(1) - fuzzyExtent{i}(3)) / ...
                    ((fuzzyExtent{j}(2) - fuzzyExtent{j}(3)) - (fuzzyExtent{i}(2) - fuzzyExtent{i}(1)));
            end
        end
    end
end

% Calculate the final weight for each criterion
weights = zeros(nCriteria, 1);
for i = 1:nCriteria
    weights(i) = min(degreePossibility(i, :));
end

% Normalize the weights so that they sum to 1
weights = weights / sum(weights);

% Write the calculated weights to the 'weights' sheet in the Excel file
writematrix(weights, inputFileName, 'Sheet', 'weights');

% Display the results
disp('The weights of the criteria have been calculated and saved to input.xls in the "weights" sheet.');