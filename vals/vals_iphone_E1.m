%
% Image: E1_iphone.jpg
% iPhone5
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        128.554,    125.421,    120.522;  % A3 - GRAY
        126.360,    10.728,     124.434;  % B4 - PURPLE/RED
         79.661,    172.915,    217.719;  % C5 - SKY BLUE
         73.109,    188.998,    119.024;  % C9 - FOREST GREEN
        232.074,    156.264,    132.558;  % D8 - SKIN
        254.745,    120.865,     22.049;  % E3 - ORANGE
         32.492,     60.990,    166.393;  % F3 - BLUE/PURPLE
        220.687,    214.182,    207.027;  % F5 - GRAY/WHITE
         79.970,    119.664,    160.979;  % G2 - HOUSE BLUE
        225.037,     54.365,     76.474;  % G3 - RED/PINK
        176.582,    171.841,    166.175;  % G5 - GRAY
        164.955,     98.441,     57.161;  % G7 - BROWN
        255.000,    213.160,     32.749;  % H4 - YELLOW
         28.507,    154.123,     36.543;  % H9 - GREEN
        132.307,    122.433,    177.402;  % I2 - PERIWINKLE
        170.850,    205.524,     52.523;  % I3 - LIGHT-GREEN/YELLOW
         82.752,     79.969,     77.373;  % I5 - GRAY
         95.878,    207.454,    181.219;  % J2 - AQUA
        250.769,     80.132,     71.465;  % J3 - ORANGE/YELLOW
          5.574,    135.749,    170.588;  % J4 - BLUE/GREEN
         27.793,     28.312,     28.053;  % J5 - BLACK
        237.580,    122.615,    142.979;  % L4 - PINK/SKIN
        206.336,     11.254,     37.454;  % M4 - RED
        253.287,    253.467,    241.010;  % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            154.758,     15.243,     84.376;   % B2 - PINK/PURPLE
              7.560,     32.613,    213.306;   % B5 - SKY BLUE
             34.766,    178.635,    206.312;   % B6 - BLUE/GREEN
            111.284,     84.229,    169.431;   % C3 - PURPLE/BLUE
            117.108,    165.143,    220.109;   % C7 - PERIWINKLE
              7.981,    154.790,     97.477;   % D9 - FOREST GREEN
              1.593,     12.764,    124.286;   % E4 - BLUE
             16.424,     16.424,     16.424;   % E6 - BLACK
            254.994,    189.968,    154.475;   % E7 - SKIN
             46.511,    161.937,     57.555;   % F4 - GREEN
            129.649,    125.954,    120.104;   % H5 - GRAY
            136.494,     67.626,     34.694;   % I8 - BROWN
            254.271,    254.960,    248.007;   % J1 - WHITE
            241.849,    237.653,    228.944;   % J6 - WHITE/GRAY
            191.997,    231.752,    230.432;   % K5 - BLUE/WHITE
            189.892,    185.579,    178.557;   % K6 - GRAY
            128.480,    125.911,    117.951;   % K10 - GRAY
            221.793,     13.662,     26.670;   % L3 - RED
            246.824,    125.747,    120.390;   % L5 - PINK/SKIN
            255.000,    102.726,     22.269;   % L6 - ORANGE
            250.424,     37.908,     41.335;   % M5 - RED/ORANGE
            255.000,    190.088,     25.865;   % M6 - YELLOW
            253.151,    202.657,     12.493;   % M7 - YELLOW
            178.749,    192.126,     20.302;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              254.749,  254.973,    250.176;   % E5 - OUTER WHITE
              241.787,  237.684,    229.025;   % J6
              220.647,  214.099,    206.996;   % F5
              207.212,  200.568,    192.368;   % I6
              189.906,  185.569,    178.572;   % K6
              176.591,  171.796,    166.031;   % G5
              160.531,  156.869,    150.310;   % H6
              129.578,  125.876,    120.098;   % H5 - OUTER GRAY
              115.497,  113.045,    108.013;   % K7
              101.803,  100.458,     97.036;   % G6
               82.768,   79.992,     77.393;   % I5
               67.078,   66.658,     65.608;   % F6
               38.280,   38.205,     36.937;   % K8
               27.832,   28.209,     28.021;   % J5
               16.326,   16.326,     16.326;   % E6 - OUTER BLACK    
    ];