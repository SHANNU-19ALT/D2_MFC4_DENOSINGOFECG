function denoised = admm_denoise(y, lambda, rho, max_iter)

N = length(y);

x_hat = zeros(N,1);
z = zeros(N,1);
u = zeros(N,1);

for k = 1:max_iter
    
    % x update
    x_hat = (y + rho*(z - u)) / (1 + rho);
    
    % z update (Soft threshold)
    z = sign(x_hat + u) .* max(abs(x_hat + u) - lambda/rho, 0);
    
    % Dual update
    u = u + x_hat - z;
    
end

denoised = x_hat;

end