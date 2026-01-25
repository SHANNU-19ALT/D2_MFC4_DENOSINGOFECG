function x = bp_admm_denoise(y)

N = length(y);
D = spdiags([ones(N,1) -ones(N,1)], [0 1], N-1, N);

lambda = 0.05;
rho = 1;
iters = 100;

x = y;
z = D*x;
u = zeros(size(z));

A = speye(N) + rho*(D'*D);

for k = 1:iters
    x = A \ (y + rho*D'*(z - u));
    Dx = D*x;
    z = soft_threshold(Dx + u, lambda/rho);
    u = u + Dx - z;
end

end
