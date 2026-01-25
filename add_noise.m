function [y, bw, noise] = add_noise(ecg, Fs, t)

bw = 0.5 * sin(2*pi*0.5*t)';   % baseline wander
noise = awgn(ecg, 10, 'measured') - ecg;
y = ecg + bw + noise;

end
