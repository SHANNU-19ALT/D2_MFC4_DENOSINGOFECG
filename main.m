clear; clc; close all;

% Load ECG from CSV
[ecg, Fs, t] = load_ecg_csv();

% Add noise
[y, ~, ~] = add_noise(ecg, Fs, t);

% Low-pass filtering
y_filtered = lowpass_filter_ecg(y, Fs);

% BP-ADMM denoising
x_denoised = bp_admm_denoise(y_filtered);

% Plot results
figure;
subplot(4,1,1); plot(t, ecg); title('Original ECG');
subplot(4,1,2); plot(t, y); title('Noisy ECG');
subplot(4,1,3); plot(t, y_filtered); title('Filtered ECG');
subplot(4,1,4); plot(t, x_denoised); title('BP-ADMM Denoised ECG');

% Metrics
performance_metrics(ecg, y, x_denoised);