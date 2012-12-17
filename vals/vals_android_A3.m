%
% Image: A3_android.jpg
% Samsung Galaxy S3
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        128.514,    136.136,    144.321;   % A3 - GRAY
        137.373,     55.357,    160.886;   % B4 - PURPLE/RED
         90.455,    187.247,    243.616;   % C5 - SKY BLUE
         64.546,    183.854,    132.242;   % C9 - FOREST GREEN
        213.165,    165.051,    158.494;   % D8 - SKIN
        226.483,    122.545,     29.493;   % E3 - ORANGE
         68.500,    100.523,    211.295;   % F3 - BLUE/PURPLE
        207.632,    216.191,    224.206;   % F5 - GRAY/WHITE
         92.000,    134.276,    198.820;   % G2 - HOUSE BLUE
        208.033,     80.923,    101.533;   % G3 - RED/PINK
        171.362,    181.219,    190.469;   % G5 - GRAY
        151.596,     95.494,     75.062;   % G7 - BROWN
        227.833,    203.696,     11.250;   % H4 - YELLOW
         18.929,    146.460,     34.996;   % H9 - GREEN
        135.585,    145.462,    203.333;   % I2 - PERIWINKLE
        159.431,    196.867,     50.262;   % I3 - LIGHT-GREEN/YELLOW
         81.173,     89.103,      96.519;  % I5 - GRAY
         95.457,    207.548,    208.670;   % J2 - AQUA
        222.549,    163.857,     15.513;   % J3 - ORANGE/YELLOW
         16.049,    158.867,    214.676;   % J4 - BLUE/GREEN
         44.196,     47.712,     52.338;   % J5 - BLACK
        215.311,    143.040,    174.778;   % L4 - PINK/SKIN
        205.810,     44.113,     62.090;   % M4 - RED
        235.346,    243.940,    247.830;   % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            164.538,     51.962,    113.731;   % B2 - PINK/PURPLE
             33.060,    162.242,    243.067;   % B5 - SKY BLUE
             54.695,    191.119,    238.195;   % B6 - BLUE/GREEN
            120.260,    112.204,    191.316;   % C3 - PURPLE/BLUE
            125.772,    180.269,    244.330;   % C7 - PERIWINKLE
              3.144,    159.294,    112.178;   % D9 - FOREST GREEN
             36.681,     59.335,    174.731;   % E4 - BLUE
             29.529,     31.548,     34.593;   % E6 - BLACK
            234.012,    194.042,    181.383;   % E7 - SKIN
             44.148,    157.060,     65.747;   % F4 - GREEN
            125.842,    134.830,    143.167;   % H5 - GRAY
            122.102,     69.561,     52.587;   % I8 - BROWN
            237.844,    244.379,    247.504;   % J1 - WHITE
            225.341,    233.674,    240.252;   % J6 - WHITE/GRAY
            192.013,    230.164,    245.387;   % K5 - BLUE/WHITE
            186.576,    195.819,    205.143;   % K6 - GRAY
            123.578,    131.817,    139.938;   % K10 - GRAY
            215.479,     45.626,     49.647;   % L3 - RED
            221.500,    142.071,    150.804;   % L5 - PINK/SKIN
            238.278,    109.217,     26.139;   % L6 - ORANGE
            234.894,     67.043,     65.596;   % M5 - RED/ORANGE
            241.901,    190.440,      8.912;   % M6 - YELLOW
            228.901,    201.214,      0.000;   % M7 - YELLOW
            168.442,    189.718,      1.244;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              238.951,  243.924,    246.747;   % E5 - OUTER WHITE
              225.393,  233.667,    240.256;   % J6
              207.667,  216.305,    224.343;   % F5
              197.622,  206.524,    215.240;   % I6
              186.661,  195.635,    204.707;   % K6
              171.423,  181.147,    190.364;   % G5
              157.189,  167.041,    178.337;   % H6
              125.755,  134.878,    143.281;   % H5 - OUTER GRAY
              111.595,  120.451,    128.815;   % K7
               94.941,  102.795,    112.052;   % G6
               81.152,   88.976,     96.343;   % I5
               67.390,   74.824,     82.048;   % F6
               47.624,   50.957,     54.059;   % K8
               43.982,   47.780,     52.399;   % J5
               29.519,   31.710,     34.386;   % E6 - OUTER BLACK    
    ];