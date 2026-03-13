function [SNR_out, MSE] = compute_metrics(original, denoised)

SNR_out = 10*log10(sum(original.^2) / sum((original-denoised).^2));
MSE = mean((original-denoised).^2);

end