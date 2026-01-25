function performance_metrics(original, noisy, denoised)

snr_before = 10*log10(sum(original.^2)/sum((original - noisy).^2));
snr_after  = 10*log10(sum(original.^2)/sum((original - denoised).^2));
mse_after  = mean((original - denoised).^2);

fprintf('\n===== PERFORMANCE METRICS =====\n');
fprintf('SNR Before Denoising : %.2f dB\n', snr_before);
fprintf('SNR After Denoising  : %.2f dB\n', snr_after);
fprintf('MSE After Denoising  : %.6f\n', mse_after);

end
