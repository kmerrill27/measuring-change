%
% Image: C1_android.jpg
% Samsung Galaxy 3
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        100.028,    102.826,    107.869; % A3 - GRAY
         97.259,     43.633,    121.217; % B4 - PURPLE/RED
        139.398,     75.792,     74.657; % C5 - SKY BLUE
         50.338,    141.838,     97.572; % C9 - FOREST GREEN
        170.863,    122.080,    115.216; % D8 - SKIN
        187.082,     89.377,     28.604; % E3 - ORANGE
         49.440,     72.522,     164.236;% F3 - BLUE/PURPLE
        167.664,    175.204,    184.786; % F5 - GRAY/WHITE
         65.088,     98.634,    153.799; % G2 - HOUSE BLUE
        168.426,     56.508,     69.269; % G3 - RED/PINK
        130.069,    136.036,    147.541; % G5 - GRAY
        113.465,     62.735,     48.252; % G7 - BROWN
        192.736,    161.121,     18.106; % H4 - YELLOW
         9.971,     106.170,     22.307; % H9 - GREEN
         99.353,     104.759,    163.333;% I2 - PERIWINKLE
        116.241,    154.365,     36.135; % I3 - LIGHT-GREEN/YELLOW
         56.983,     58.794,     63.473; % I5 - GRAY
        70.749,     168.592,    172.589; % J2 - AQUA
        185.437,    121.639,     22.707; % J3 - ORANGE/YELLOW
         11.081,    116.891,    174.323; % J4 - BLUE/GREEN
         30.496,     32.436,     37.508; % J5 - BLACK
        178.408,    103.321,    133.337; % L4 - PINK/SKIN
        167.278,     35.571,     46.790; % M4 - RED
        205.269,    215.670,    221.044; % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            119.862,     47.932,     89.075;   % B2 - PINK/PURPLE
             36.372,    120.795,    202.488;   % B5 - SKY BLUE
             45.625,    148.520,    196.847;   % B6 - BLUE/GREEN
             89.143,      83.468,   153.170;   % C3 - PURPLE/BLUE
             90.796,    137.845,    205.573;   % C7 - PERIWINKLE
              6.668,    119.633,     80.960;   % D9 - FOREST GREEN
             28.966,    44.633,     131.920;   % E4 - BLUE
             25.214,     23.933,     26.564;   % E6 - BLACK
            201.039,    148.843,    139.186;   % E7 - SKIN
             33.123,    118.898,     49.377;   % F4 - GREEN
             90.937,     93.585,     98.784;   % H5 - GRAY
             88.112,     42.070,     26.200;   % I8 - BROWN
            203.589,    213.182,    219.933;   % J1 - WHITE
            187.093,    196.774,    206.336;   % J6 - WHITE/GRAY
            147.832,    191.514,    213.129;   % K5 - BLUE/WHITE
            144.812,    152.546,    162.966;   % K6 - GRAY
             87.010,     91.913,     97.646;   % K10 - GRAY
            178.834,     39.937,     37.310;   % L3 - RED
            183.673,    101.135,    109.004;   % L5 - PINK/SKIN
            204.371,     76.070,     19.590;   % L6 - ORANGE
            200.664,     49.411,      42.687;  % M5 - RED/ORANGE
            211.218,    143.812,     16.365;   % M6 - YELLOW
            194.567,    156.099,      0.229;   % M7 - YELLOW
            127.412,    142.608,      7.186;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              203.718,  211.421,    217.510;   % E5 - OUTER WHITE
              187.051,  196.774,    206.324;   % J6
              167.836,  175.228,    184.963;   % F5
              156.325,  163.875,    173.643;   % I6
              144.819,  152.623,    163.060;   % K6
              130.284,  136.140,    147.800;   % G5
              116.157,  122.499,    131.743;   % H6
               91.126,   93.588,     98.663;   % H5 - OUTER GRAY
               78.147,   80.978,     86.270;   % K7
               66.581,   69.322,     75.623;   % G6
               56.610,   58.619,     63.377;   % I5
               50.107,   50.644,     55.099;   % F6
               31.199,   31.401,     33.404;   % K8
               30.455,   32.460,     37.526;   % J5
               25.576,   24.278,     26.910;   % E6 - OUTER BLACK    
    ];
