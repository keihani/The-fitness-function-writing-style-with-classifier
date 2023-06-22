clc;
clear;
close all;
dataset = readtable("dataset\WBC.csv", "preserveVariableNames", true);
opt = trainingOptions('sgdm', ...
            'InitialLearnRate',0.01, ...
            'Momentum', 0.9, ...
            'MaxEpochs',300, ...
            'Shuffle','every-epoch', ...
            'ValidationFrequency',30, ...
            'Verbose',false, ...
            'ExecutionEnvironment','auto', ...
            'Plots', 'training-progress');
% dataset: Breast Cancer Wisconsin (Original)
% opt: training Options for Deep Learning
% metricsID: [1: accuracy, 2: precision, 3: recall, 4: f1]
f = Fitness(dataset, opt, 4);
disp('F1-score:'+ string(f));




