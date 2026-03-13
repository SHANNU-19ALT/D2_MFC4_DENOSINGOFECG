function [y, baseline] = add_noise(x, Fs, SNR_dB)

N = length(x);
t = (0:N-1)/Fs;

% Baseline Wander (0.5 Hz)
baseline = 0.5*sin(2*pi*0.5*t)';

% Gaussian Noise
x_power = mean(x.^2);
noise_power = x_power/(10^(SNR_dB/10));
noise = sqrt(noise_power)*randn(N,1);

% Noisy ECG
y = x + baseline + noise;

end