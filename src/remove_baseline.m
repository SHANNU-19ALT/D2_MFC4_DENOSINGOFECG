function y_filtered = remove_baseline(y, Fs)

fc = 2;  % cutoff frequency (Hz)
[b,a] = butter(4, fc/(Fs/2), 'high');
y_filtered = filtfilt(b,a,y);

end