function [ecg, Fs, t] = load_ecg_csv()

data = readmatrix('mitbih_train.csv');

ecg = data(1, 1:end-1);   % ECG samples (remove label)
Fs = 360;                 % Sampling frequency
t = (0:length(ecg)-1)/Fs;

ecg = ecg(:);             % Convert to column vector

end
