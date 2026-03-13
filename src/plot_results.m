function plot_results(original, noisy, denoised)

figure

subplot(3,1,1)
plot(original)
title('Original ECG')

subplot(3,1,2)
plot(noisy)
title('Noisy ECG')

subplot(3,1,3)
plot(denoised)
title('BP-ADMM Denoised ECG')

end