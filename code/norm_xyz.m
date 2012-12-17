%
% Normalize XYZ values by XYZ values of illuminant.
%
function xyz = norm_xyz(xyz, illuminant_vals)
    
    dim = size(xyz, 1);
    for i=1:dim
        xyz(i, 1) = xyz(i, 1)/illuminant_vals(1);
        xyz(i, 2) = xyz(i, 2)/illuminant_vals(2);
        xyz(i, 3) = xyz(i, 3)/illuminant_vals(3);
    end
    
end

