%
% Known XYZ values for selected tiles
%

% XYZ values used to calculate RGB->XYZ transform
XYZ = [ 
       17.73,  18.64,  20.00;  % A3 - GRAY
       12.06,   6.43,  23.64;  % B4 - PURPLE/RED
       25.17,  30.32,  58.75;  % C5 - SKY BLUE
       19.14,  29.81,  17.92;  % C9 - FOREST GREEN
       36.31,  33.01,  23.05;  % D8 - SKIN
       36.10,  27.81,   3.17;  % E3 - ORANGE
       11.33,   9.50,  36.76;  % F3 - BLUE/PURPLE
       53.96,  56.64,  61.23;  % F5 - GRAY/WHITE
       15.32,  16.43,  31.63;  % G2 - HOUSE BLUE
       24.76,  15.57,   9.82;  % G3 - RED/PINK
       33.32,  35.04,  37.94;  % G5 - GRAY
       15.19,  13.66,   6.00;  % G7 - BROWN
       53.14,  56.17,   5.51;  % H4 - YELLOW
       10.83,  20.01,   4.62;  % H9 - GREEN
       21.96,  20.54,  40.56;  % I2 - PERIWINKLE
       32.13,  42.52,   7.77;  % I3 - LIGHT GREEN/YELLOW
        8.53,   8.96,   9.65;  % I5 - GRAY
       19.09,  40.69,  42.04;  % J2 - AQUA
       42.37,  38.96,   4.36;  % J3 - ORANGE/YELLOW
       12.59,  18.20,  36.93;  % J4 - BLUE/GREEN
        2.34,   2.46,   2.75;  % J5 - BLACK
       36.27,  28.17,  28.89;  % L4 - PINK/SKIN
       19.62,  10.08,   3.62;  % M4 - RED
       86.50,  91.55,  97.09;  % N1 - WHITE
       ];        
    
% XYZ values used to test calculated XYZ->RGB transform   
XYZ_test = [
            12.89,   6.96,  11.94;  % B2 - PINK/PURPLE
            17.33,  20.01,  57.54;  % B5 - SKY BLUE
            22.80,  30.79,  53.57;  % B6 - BLUE/GREEN
            15.87,  12.98,  35.46;  % C3 - PURPLE/BLUE
            28.38,  30.53,  61.48;  % C7 - PERIWINKLE
            10.25,  19.77,  12.92;  % D9 - FOREST GREEN
             5.51,   3.59,  24.22;  % E4 - BLUE
             0.85,   0.88,   0.96;  % E6 - BLACK
            55.42,  50.79,  35.51;  % E7 - SKIN
            12.12,  21.04,   6.19;  % F4 - GREEN
            17.39,  18.30,  19.56;  % H5 - GRAY
            10.23,   8.94,   3.42;  % I8 - BROWN
            86.69,  91.75,  97.37;  % J1 - WHITE
            71.02,  74.89,  81.43;  % J6 - WHITE/GRAY
            56.93,  65.58,  80.41;  % K5 - BLUE/WHITE
            40.51,  42.60,  46.19;  % K6 - GRAY
            17.44,  18.36,  19.61;  % K10 - GRAY
            22.45,  11.71,   2.03;  % L3 - RED
            36.79,  28.93,  21.33;  % L5 - PINK/SKIN
            40.98,  28.34,   2.50;  % L6 - ORANGE
            33.22,  18.84,   4.64;  % M5 - RED/ORANGE
            62.07,  56.37,   6.88;  % M6 - YELLOW
            56.57,  58.25,   4.83;  % M7 - YELLOW
            34.54,  42.44,   5.27;  % M8 - YELLOW/GREEN
            ];          

% Y gray scale values used to calculate inverse gamma
gamma_Y = [
          92.01;    % E5 - OUTER WHITE
          74.89;    % J6
          56.64;    % F5
          49.45;    % I6
          46.19;    % K6
          35.04;    % G5
          29.19;    % H6
          18.30;    % H5 - OUTER GRAY
          15.43;    % K7
          11.85;    % G6
          08.96;    % I5
          06.82;    % F6
          03.45;    % K8
          02.46;    % J5
          00.88;    % E6 - OUTER BLACK
          ];
