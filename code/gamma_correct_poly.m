%
% Calculate the inverse gamma function from normalized RGB and Y values by
% fitting to polynomial.
%
function gamma_coeff = gamma_correct_poly(norm_R, norm_G, norm_B, norm_Y)

     % Average R, G, and B values for each tile - RGB values within the
     % same tile in a gray scale are approximately identical
     nonlin_RGB = (norm_R + norm_G + norm_B) / 3;           
     
     % Plot gamma curve
     scatter(norm_Y, nonlin_RGB)
     hold
     
     % Approximate best-fit curve for a fifth degree polynomial, which is
     % the inverse gamma function
     a = polyfit(nonlin_RGB, norm_Y, 5);
     
     % Linearize RGB values using inverse gamma function
     lin_RGB = a(1)*nonlin_RGB.^5 + a(2)*nonlin_RGB.^4 + ...
         a(3)*nonlin_RGB.^3 + a(4)*nonlin_RGB.^2 + a(5)*nonlin_RGB + a(6);

     % Plot linear RGB values against normalized Y values
     scatter(lin_RGB, norm_Y)
     
     % Return coefficients a,b for inverse gamma function
     gamma_coeff = a;
 
end
 