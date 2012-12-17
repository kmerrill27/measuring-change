%
% Calculate the inverse gamma function from normalized RGB and Y values.
%
function gamma_coeff = gamma_correct(norm_R, norm_G, norm_B, norm_Y)

     % Average R, G, and B values for each tile - RGB values within the
     % same tile in a gray scale are approximately identical
     nonlin_RGB = (norm_R + norm_G + norm_B) / 3;           
     
     % Plot gamma curve
     scatter(norm_Y, nonlin_RGB)
     hold
     
     % Best estimates for coefficients a, b
     a0 = [1, 2.2];
     
     % Approximate best-fit curve of the form a*x^b, which is the inverse
     % gamma function
     [a, resnorm] = lsqcurvefit(@nonlin_fit, a0, nonlin_RGB, norm_Y);
     
     % Linearize RGB values using inverse gamma function
     lin_RGB = a(1) * nonlin_RGB.^a(2);

     % Plot linear RGB values against normalized Y values
     scatter(lin_RGB, norm_Y)
     
     % Return coefficients a,b for inverse gamma function
     gamma_coeff = a;
 
end
 