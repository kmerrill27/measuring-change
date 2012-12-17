%
% Calculates deltaE and deltaC values for two matrices of L*a*b* values of
% size dim using CIE 1976 formula
%
function deltaE_1976 = calc_deltaE_1976(lab1, lab2)

    dim = size(lab1, 1);

    % Change in L*a*b*
    delta_lab = lab1 - lab2;

    % Delta E (CIE 1976)
    deltaE = ones([dim, 1]);
    
    % Delta C (chroma difference) - independent of luminance
    deltaC = ones([dim, 1]);
    
    for i=1:dim
        deltaE(i) = sqrt(delta_lab(i,1).^2 + delta_lab(i,2).^2 + ...
            delta_lab(i,3).^2);
        deltaC(i) = sqrt(delta_lab(i,2).^2 + delta_lab(i,3).^2);
    end

    % Return two-column matrix of deltaE and deltaC values
    deltaE_1976 = [deltaE, deltaC];
    
end

