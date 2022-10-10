clear all;
clc;
%close all;
set(groot,'defaultFigureVisible','on');


outputFolderRoot = '.';
testTimes = 80000;

resultsCollection = zeros(testTimes, 1);
L1differenceCollection = zeros(testTimes, 1);
L2differenceCollection = zeros(testTimes, 1);

N = 86;
N1 = N;
N2 = N;
N3 = N;

test = zeros(N1, N2, N3);
for z = 1:size(test, 3)
    test(:, :, z) = mod(z, 2) * 255;
end
test_groundTruth = test;

for i = 1:testTimes
    tic;
    test = gather(IDCT3D_gpuArray2(DCT3D_gpuArray2(gpuArray(test))));
    L1differenceCollection(i) = sum(abs(test_groundTruth - test), 'all');
    L2differenceCollection(i) = sqrt(sum(power(test_groundTruth - test, 2), 'all'));
    ElapsedTime = toc;
    resultsCollection(i) = ElapsedTime;
    
    % Show progress
    fprintf('The calculation of frame %d / %d is finished!\n', i, testTimes);
end

save(fullfile(outputFolderRoot, ['DCT_error_' num2str(N) '.mat']), '-v7.3');

exit;