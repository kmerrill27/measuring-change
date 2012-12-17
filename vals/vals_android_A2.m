%
% Image: A2_android.jpg
% Samsung Galaxy S3
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        125.543,    127.639,    111.865;   % A3 - GRAY
        142.014,     45.337,    119.976;   % B4 - PURPLE/RED
         81.435,    179.780,    209.732;   % C5 - SKY BLUE
         53.286,    174.584,    100.961;   % C9 - FOREST GREEN
        217.290,    153.519,    127.719;   % D8 - SKIN
        229.729,    116.629,     12.108;   % E3 - ORANGE
         58.177,     92.946,    170.254;   % F3 - BLUE/PURPLE
        208.542,    210.689,    194.500;   % F5 - GRAY/WHITE
         85.960,    127.040,    152.631;   % G2 - HOUSE BLUE
        213.824,     72.025,     73.422;   % G3 - RED/PINK
        170.062,    172.448,    154.604;   % G5 - GRAY
        149.611,     87.679,     43.326;   % G7 - BROWN
        231.489,    199.813,      0.126;   % H4 - YELLOW
          8.590,    138.195,     12.908;   % H9 - GREEN
        136.133,    134.322,    164.678;   % I2 - PERIWINKLE
        161.243,    189.200,     23.714;   % I3 - LIGHT-GREEN/YELLOW
         76.900,     78.956,     66.719;   % I5 - GRAY
         94.308,    201.829,    169.308;   % J2 - AQUA
        227.238,    158.767,      0.152;   % J3 - ORANGE/YELLOW
          3.692,    148.327,    177.649;   % J4 - BLUE/GREEN
         34.473,     39.109,     31.212;   % J5 - BLACK
        221.118,    131.741,    139.627;   % L4 - PINK/SKIN
        214.236,     33.596,     47.564;   % M4 - RED
        237.275,    239.297,    225.516;   % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            168.857,     42.332,     82.576;   % B2 - PINK/PURPLE
             19.872,    152.395,    212.497;   % B5 - SKY BLUE
             40.071,    184.609,    203.444;   % B6 - BLUE/GREEN
            119.043,    101.895,    156.362;   % C3 - PURPLE/BLUE
            118.107,    172.923,    208.290;   % C7 - PERIWINKLE
              0.000,    146.273,     82.699;   % D9 - FOREST GREEN
             23.018,     51.352,    134.624;   % E4 - BLUE
             18.737,     21.679,     14.728;   % E6 - BLACK
            232.622,    189.284,    142.880;   % E7 - SKIN
             38.099,    148.835,     45.842;   % F4 - GREEN
            121.481,    122.929,    106.224;   % H5 - GRAY
            120.536,     59.599,     27.583;   % I8 - BROWN
            239.115,    241.038,    227.071;   % J1 - WHITE
            226.412,    228.412,    214.729;   % J6 - WHITE/GRAY
            195.542,    225.025,    215.342;   % K5 - BLUE/WHITE
            185.838,    187.690,    172.143;   % K6 - GRAY
            117.361,    119.984,    104.906;   % K10 - GRAY
            223.986,     38.867,     38.938;   % L3 - RED
            226.604,    130.692,    117.260;   % L5 - PINK/SKIN
            243.500,    103.029,     15.243;   % L6 - ORANGE
            241.319,     60.500,     49.260;   % M5 - RED/ORANGE
            245.667,    186.288,      0.000;   % M6 - YELLOW
            232.495,    196.495,      0.000;   % M7 - YELLOW
            166.664,    183.546,      0.000;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              239.893,  240.738,    226.849;   % E5 - OUTER WHITE
              226.402,  228.402,    214.772;   % J6
              208.617,  210.816,    194.556;   % F5
              197.448,  200.480,    183.702;   % I6
              185.656,  187.733,    172.318;   % K6
              169.815,  172.361,    154.597;   % G5
              154.944,  157.026,    141.726;   % H6
              121.792,  123.212,    106.654;   % H5 - OUTER GRAY
              106.424,  108.147,     94.040;   % K7
               89.676,   92.049,     79.039;   % G6
               76.933,   78.933,     66.683;   % I5
               60.658,   64.811,     53.832;   % F6
               39.396,   40.791,     32.599;   % K8
               34.192,   39.313,     31.115;   % J5
               18.773,   21.708,     14.740;   % E6 - OUTER BLACK    
    ];