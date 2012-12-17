%
% Calculates deltaE values for two matrices of L*a*b* values of size dim
% using CIE 1994 formula
%
function deltaE_1994 = calc_deltaE_1994(lab1, lab2)

    dim = size(lab1, 1);
    deltaE_1994 = ones([dim, 1]);
    
    for i=1:dim
        
        % L*a*b* values for reference tiles
        L1 = lab1(i,1);
        a1 = lab1(i,2);
        b1 = lab1(i,3);
        
        % L*a*b* values calculated for tiles using RGB->XYZ transform
        L2 = lab2(i,1);
        a2 = lab2(i,2);
        b2 = lab2(i,3);
        
        % Change in L*a*b* values
        delta_L = L1 - L2;
        delta_a = a1 - a2;
        delta_b = b1 - b2;
        
        C1 = sqrt(a1.^2 + b1.^2);
        C2 = sqrt(a2.^2 + b2.^2);
        delta_C = C1 - C2;
        
        delta_H = sqrt(delta_a.^2 + delta_b.^2 - delta_C.^2);
        
        % Constants for graphic arts uses (vs. textiles)
        K1 = .045;
        K2 = .015;
        Sc = 1 + K1*C1;
        Sh = 1 + K2*C1;

        % Formula for deltaE CIE 1994
        deltaE_1994(i) = sqrt(delta_L.^2 + (delta_C/(Sc)).^2 + ...
            (delta_H/Sh).^2);
    end

end

