clear all;
clc;
%close all;
set(groot,'defaultFigureVisible','on');


outputFolderRoot = '.';
testTimes = 10000;

resultsCollection = zeros(testTimes, 1);
L1differenceCollection = zeros(testTimes, 1);
L2differenceCollection = zeros(testTimes, 1);

N = 100;
N1 = N;
N2 = N;
N3 = N;

test = zeros(N1, N2, N3);
for z = 1:size(test, 3)
    test(:, :, z) = mod(z, 2) * 255;
end
test_groundTruth = test;

test = gather(IDCT3D_gpuArray2(DCT3D_gpuArray2(gpuArray(test))));
sum(abs(test_groundTruth - test), 'all')
