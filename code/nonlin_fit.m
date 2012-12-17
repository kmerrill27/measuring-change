%
% Function format for inverse gamma: a*x^b.
%
function gamma_fun = nonlin_fit(a, x_vals)
    gamma_fun = a(1)*x_vals.^a(2);
end

