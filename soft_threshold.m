function z = soft_threshold(x, T)
z = sign(x) .* max(abs(x) - T, 0);
end
