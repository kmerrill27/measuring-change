%
% Image: E3_iphone.jpg
% iPhone5
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        119.347,    118.948,    117.411;   % A3 - GRAY
        117.176,      7.777,    122.200;   % B4 - PURPLE/RED
         66.280,    162.968,    213.400;   % C5 - SKY BLUE
         61.221,    174.496,    112.503;   % C9 - FOREST GREEN
        219.356,    146.299,    127.868;   % D8 - SKIN
        243.817,    113.389,     21.704;   % E3 - ORANGE
         23.188,     50.241,    160.264;   % F3 - BLUE/PURPLE
        209.131,    205.534,    204.102;   % F5 - GRAY/WHITE
         69.285,    112.563,    158.823;   % G2 - HOUSE BLUE
        211.532,     48.363,     71.227;   % G3 - RED/PINK
        165.593,    164.163,    162.599;   % G5 - GRAY
        151.861,     87.931,     51.699;   % G7 - BROWN
        250.447,    204.456,     31.400;   % H4 - YELLOW
         20.624,    140.961,     29.677;   % H9 - GREEN
        124.070,    114.938,    175.231;   % I2 - PERIWINKLE
        161.398,    195.995,     50.654;   % I3 - LIGHT-GREEN/YELLOW
         72.855,     72.030,     72.886;   % I5 - GRAY
         86.215,    198.290,    177.217;   % J2 - AQUA
        239.245,    154.318,     19.498;   % J3 - ORANGE/YELLOW
          4.971,    127.861,    167.990;   % J4 - BLUE/GREEN
         22.969,     23.794,     24.444;   % J5 - BLACK
        227.850,    118.438,    141.613;   % L4 - PINK/SKIN
        198.669,      9.068,     34.329;   % M4 - RED
        246.724,    246.418,    238.585;   % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            145.445,     11.621,     80.983;   % B2 - PINK/PURPLE
              4.554,    123.287,    207.628;   % B5 - SKY BLUE
             24.574,    166.817,    198.978;   % B6 - BLUE/GREEN
            103.600,     73.913,    167.281;   % C3 - PURPLE/BLUE
            105.633,    153.734,    213.059;   % C7 - PERIWINKLE
              5.016,    143.014,     92.374;   % D9 - FOREST GREEN
              0.676,      7.655,    119.010;   % E4 - BLUE
             12.175,     12.240,     12.208;   % E6 - BLACK
            251.045,    181.993,    150.627;   % E7 - SKIN
             38.770,    153.267,     53.855;   % F4 - GREEN
            119.625,    118.160,    116.658;   % H5 - GRAY
            123.450,     57.183,     28.020;   % I8 - BROWN
            250.596,    249.444,    244.526;   % J1 - WHITE
            232.262,    229.765,    227.201;   % J6 - WHITE/GRAY
            181.361,    223.619,    228.500;   % K5 - BLUE/WHITE
            180.201,    177.884,    176.350;   % K6 - GRAY
            117.565,    115.697,    111.794;   % K10 - GRAY
            212.661,     12.178,     23.535;   % L3 - RED
            237.266,    121.143,    119.432;   % L5 - PINK/SKIN
            254.453,     97.504,     21.396;   % L6 - ORANGE
            242.671,     35.379,     39.798;   % M5 - RED/ORANGE
            254.464,    184.681,     28.044;   % M6 - YELLOW
            248.009,    196.782,     14.112;   % M7 - YELLOW
            170.520,    185.953,     20.420;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              252.086,  251.157,    246.541;   % E5 - OUTER WHITE
              232.105,  229.732,    227.195;   % J6
              209.133,  205.491,    204.027;   % F5
              195.864,  192.046,    190.266;   % I6
              180.208,  177.981,    176.409;   % K6
              165.351,  164.033,    162.459;   % G5
              148.469,  147.265,    146.360;   % H6
              119.726,  118.158,    116.642;   % H5 - OUTER GRAY
              106.000,  104.907,    103.790;   % K7
               91.863,   91.421,     94.427;   % G6
               72.918,   72.042,     72.847;   % I5
               58.858,   59.163,     60.804;   % F6
               31.629,   31.661,     31.647;   % K8
               23.080,   23.898,     24.446;   % J5
               12.167,   12.488,     12.327;   % E6 - OUTER BLACK    
    ];