clear; clc; close all;

%% Set Project Paths
projectRoot = fileparts(mfilename('fullpath'));
addpath(genpath(fullfile(projectRoot,'..','wfdb')));
dataPath = fullfile(projectRoot,'..','data');

%% Load ECG
cd(dataPath)
[sig, Fs, tm] = rdsamp('104');
cd(projectRoot)

x = sig(:,1);
x = x(1:3000);   % Use first 3000 samples

%% Add Noise
SNR_dB = 5;
[y, baseline] = add_noise(x, Fs, SNR_dB);

%% Remove Baseline Wander
y_filtered = remove_baseline(y, Fs);

%% BP-ADMM Denoising
lambda = 0.05;
rho = 1;
max_iter = 200;

denoised = admm_denoise(y_filtered, lambda, rho, max_iter);

%% Compute Metrics
[SNR_out, MSE] = compute_metrics(x, denoised);

disp(['Output SNR: ', num2str(SNR_out), ' dB'])
disp(['MSE: ', num2str(MSE)])

%% Plot Results
plot_results(x, y, denoised);