function y_filtered = lowpass_filter_ecg(y, Fs)

N = length(y);

% Choose safe filter order
filter_order = min(20, floor(N/3) - 1);

fc = 40;
b = fir1(filter_order, fc/(Fs/2), 'low');

y_filtered = filtfilt(b, 1, y);

end
