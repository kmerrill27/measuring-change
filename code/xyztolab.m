%
% Convert values in XYZ space to L*a*b* space
%
function lab_vals = xyztolab(xyz, illuminant_vals)

    % Normalize XYZ values to given illuminant
    lab_vals = norm_xyz(xyz, illuminant_vals);
    
    dim = size(xyz, 1);
    for i=1:dim

        if (lab_vals(i,1) > 0.008856)
            % f(t) = t^(1/3)
            var_X = lab_vals(i,1).^(1/3);
        else
            % f(t) = (1/3)(29/6)^2*t + 4/29
            var_X = (7.787 * lab_vals(i,1)) + (16/116);
        end

        if (lab_vals(i,2) > 0.008856)
            % f(t) = t^(1/3)
            var_Y = lab_vals(i,2).^(1/3);
        else
            % f(t) = (1/3)(29/6)^2*t + 4/29
            var_Y = (7.787 * lab_vals(i,2)) + (16/116);
        end

        if (lab_vals(i,3) > 0.008856)
            % f(t) = t^(1/3)
            var_Z = lab_vals(i,3).^(1/3);
        else
            % f(t) = (1/3)(29/6)^2*t + 4/29
            var_Z = (7.787 * lab_vals(i,3)) + (16/116);
        end    

        % L* = 116*f(Y/Y_n) - 16
        lab_vals(i,1) = (116 * var_Y) - 16;
        
        % a* = 500[f(X/X_n) - f(Y/Y_n)]
        lab_vals(i,2) = 500 * (var_X - var_Y);
        
        % b* = 200[f(Y/Y_n) - f(Z/Z_n)]
        lab_vals(i,3) = 200 * (var_Y - var_Z);

    end

end
