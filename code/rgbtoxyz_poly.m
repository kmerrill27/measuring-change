%
% Calculate RGB->XYZ transform from subset of ColorChecker tiles using
% polynomial gamma correction a_1*x^n + a_2*x^(n-1) + ... + a_(n-1)*x + a_n.
% RGB and XYZ matrices read in from files must be of the same size.
%
function ave_deltas = rgbtoxyz_poly(rgb_vals_filename, xyz_vals_filename)

    % Make variables visible in workspace
    global XYZ RGB xyz_norm rgb_lin gamma_Y gamma_RGB gamma_RGB_norm ...
        gamma_inverse rgbxyz XYZ_test RGB_test xyz_test_norm ...
        rgb_test_norm lab_ref xyz_calc lab_calc delta_lab deltaE_1976 ...
        deltaE_1994 deltaE_2000;

	% Run file with RGB matrices with values for RGB, RGB_test, gamma_RGB
	run(rgb_vals_filename);

	% Run file with XYZ matrices with values for XYZ, XYZ_test, gamma_Y
	run(xyz_vals_filename);

	% D65 illuminant values: [X,Y,Z]
    illuminant_vals = [95.04, 100.0, 108.89];

    % Normalize XYZ data to [0,1] using D65 illuminant values.
    xyz_norm = norm_xyz(XYZ, illuminant_vals);

    % Normalize RGB data to [0,1] and linearize using calculated inverse gamma.
    gamma_RGB_norm = gamma_RGB./255;
    gamma_inverse = gamma_correct_poly(gamma_RGB_norm(:,1), ...
        gamma_RGB_norm(:,2), gamma_RGB_norm(:,3), gamma_Y./illuminant_vals(2));
    nonlin_RGB = RGB./255;
    rgb_lin = gamma_inverse(1)*nonlin_RGB.^5 + ...
        gamma_inverse(2)*nonlin_RGB.^4 + ...
        gamma_inverse(3)*nonlin_RGB.^3 + ...
        gamma_inverse(4)*nonlin_RGB.^2 + ...
        gamma_inverse(5)*nonlin_RGB + gamma_inverse(6);
    m = rgb_lin;
    
    % Calculate RGB->XYZ transform matrix: inv([mtm]) * [mtxyz].
    mt = transpose(m);
    mtm = mt*m;
    mtxyz = mt * xyz_norm;
    rgbxyz = mtm \ mtxyz; % inv(A) * b = A \ b

    % Calculate whitepoint for rgbxyz transform matrix.
    sum_x = rgbxyz(1,1) + rgbxyz(2,1) + rgbxyz(3,1);
    sum_y = rgbxyz(1,2) + rgbxyz(2,2) + rgbxyz(3,2);
    sum_z = rgbxyz(1,3) + rgbxyz(2,3) + rgbxyz(3,3);

    % Normalize RGB->XYZ matrix to the white point.
    for i=1:3
        rgbxyz(i,1) = (rgbxyz(i,1) * illuminant_vals(1)) / sum_x;
        rgbxyz(i,2) = (rgbxyz(i,2) * illuminant_vals(2)) / sum_y;
        rgbxyz(i,3) = (rgbxyz(i,3) * illuminant_vals(3)) / sum_z;
    end

    % Convert reference test XYZ values to CIE L*a*b* values.
    lab_ref = xyztolab(XYZ_test, illuminant_vals);
    xyz_test_norm = norm_xyz(XYZ_test, illuminant_vals);

    % Normalize and linearize test RGB values.
    nonlin_RGB = RGB_test./255;
    rgb_test_norm = gamma_inverse(1)*nonlin_RGB.^5 + ...
        gamma_inverse(2)*nonlin_RGB.^4 + gamma_inverse(3)*nonlin_RGB.^3 + ...
        gamma_inverse(4)*nonlin_RGB.^2 + gamma_inverse(5)*nonlin_RGB + ...
        gamma_inverse(6);
    
    % Convert XYZ values for test tiles calculated using RGB->XYZ transform
    % to CIE L*a*b* values.
    xyz_calc = rgb_test_norm * rgbxyz;
    lab_calc = xyztolab(xyz_calc, illuminant_vals);

    delta_lab = abs(lab_ref - lab_calc);
    % Calculate deltaE values using different formulas for comparison
    deltaE_1976 = calc_deltaE_1976(lab_ref, lab_calc);
    deltaE_1994 = calc_deltaE_1994(lab_ref, lab_calc);
    deltaE_2000 = calc_deltaE_2000(lab_ref, lab_calc);

    rgbxyz % RGB->XYZ transform matrix

    % Average deltaE 1976, average deltaE 1994, average deltaE 2000,
    % average deltaC (chroma)
    ave_deltas = [mean(deltaE_1976(:,1)), mean(deltaE_1994), ...
        mean(deltaE_2000), mean(deltaE_1976(:,2))];

end
