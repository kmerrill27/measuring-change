%
% Image: A1_android.jpg
% Samsung Galaxy S3
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        137.580,    139.938,    124.589;   % A3 - GRAY
        154.743,     52.795,    135.208;   % B4 - PURPLE/RED
         91.357,    193.094,    220.886;   % C5 - SKY BLUE
         59.349,    188.542,    114.710;   % C9 - FOREST GREEN
        226.349,    166.436,    139.646;   % D8 - SKIN
        238.479,    130.812,     13.900;   % E3 - ORANGE
         64.933,    102.555,    183.010;   % F3 - BLUE/PURPLE
        220.110,    222.129,    205.659;   % F5 - GRAY/WHITE
         95.786,    140.557,    167.682;   % G2 - HOUSE BLUE
        225.983,     82.271,     81.924;   % G3 - RED/PINK
        182.537,    185.431,    168.710;   % G5 - GRAY
        162.855,     98.224,     52.945;   % G7 - BROWN
        239.556,    211.500,      0.427;   % H4 - YELLOW
         10.485,    151.917,     17.615;   % H9 - GREEN
        158.046,    149.779,    146.369;   % I2 - PERIWINKLE
        173.577,    202.033,     27.541;   % I3 - LIGHT-GREEN/YELLOW
         86.200,     88.703,     75.595;   % I5 - GRAY
        106.259,    213.375,    184.089;   % J2 - AQUA
        234.848,    172.946,      1.013;   % J3 - ORANGE/YELLOW
          7.747,    161.659,    192.203;   % J4 - BLUE/GREEN
         42.539,     45.945,     38.531;   % J5 - BLACK
        230.132,    145.974,    153.607;   % L4 - PINK/SKIN
        226.423,     40.506,     54.482;   % M4 - RED
        245.357,    246.786,    234.337;   % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            182.666,     48.922,     95.179;   % B2 - PINK/PURPLE
             25.830,    166.219,    224.929;   % B5 - SKY BLUE
             49.343,    198.882,    216.183;   % B6 - BLUE/GREEN
            130.017,    113.094,    171.167;   % C3 - PURPLE/BLUE
            126.814,    187.095,    217.767;   % C7 - PERIWINKLE
              0.000,    160.726,     94.381;   % D9 - FOREST GREEN
             27.161,     57.580,    148.245;   % E4 - BLUE
             23.172,    25.207,      18.906;   % E6 - BLACK
            241.477,    201.103,    157.667;   % E7 - SKIN
             45.049,    162.731,     52.830;   % F4 - GREEN
            132.973,    135.636,    118.120;   % H5 - GRAY
            131.557,     68.699,     34.280;   % I8 - BROWN
            246.127,    247.855,    235.190;   % J1 - WHITE
            235.330,    237.154,    224.242;   % J6 - WHITE/GRAY
            204.872,    234.272,    225.883;   % K5 - BLUE/WHITE
            198.495,    200.934,    183.390;   % K6 - GRAY
            129.579,    132.913,    117.841;   % K10 - GRAY
            234.613,     44.538,     46.147;   % L3 - RED
            235.931,    144.062,    131.326;   % L5 - PINK/SKIN
            250.876,    116.900,     18.282;   % L6 - ORANGE
            248.459,     70.239,     58.239;   % M5 - RED/ORANGE
            252.388,    199.842,      0.000;   % M6 - YELLOW
            241.158,    209.684,      0.000;   % M7 - YELLOW
            180.750,    196.639,      0.000;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              246.667,  247.810,    233.952;   % E5 - OUTER WHITE
              235.032,  236.975,    224.011;   % J6
              219.935,  221.994,    205.570;   % F5
              208.713,  211.090,    195.954;   % I6
              198.456,  200.913,    183.415;   % K6
              182.608,  185.503,    168.774;   % G5
              167.639,  170.543,    153.418;   % H6
              133.084,  135.729,    118.182;   % H5 - OUTER GRAY
              117.900,  120.510,    105.595;   % K7
              100.513,  102.518,     88.897;   % G6
               85.988,   88.684,     75.222;   % I5
               71.059,   72.542,     62.794;   % F6
               45.776,   48.263,     36.609;   % K8
               42.412,   45.949,     38.754;   % J5
               23.144,   25.413,     18.938;   % E6 - OUTER BLACK    
    ];