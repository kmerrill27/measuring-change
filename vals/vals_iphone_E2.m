%
% Image: E2_iphone.jpg
% iPhone5
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        122.527,    121.848,    120.018;   % A3 - GRAY
        121.627,      7.737,    124.601;   % B4 - PURPLE/RED
         68.126,    166.077,    215.655;   % C5 - SKY BLUE
         62.436,    177.371,    114.218;   % C9 - FOREST GREEN
        221.330,    148.556,    130.343;   % D8 - SKIN
        247.022,    116.512,     21.827;   % E3 - ORANGE
         24.624,     51.554,    163.518;   % F3 - BLUE/PURPLE
        211.934,    207.598,    206.212;   % F5 - GRAY/WHITE
         71.819,    115.551,    161.820;   % G2 - HOUSE BLUE
        215.374,     49.571,     73.620;   % G3 - RED/PINK
        167.664,    166.456,    164.517;   % G5 - GRAY
        154.757,     90.212,     52.852;   % G7 - BROWN
        252.407,    206.483,     33.046;   % H4 - YELLOW
         20.899,    143.364,     30.183;   % H9 - GREEN
        127.213,    117.690,    177.783;   % I2 - PERIWINKLE
        164.348,    198.463,     52.566;   % I3 - LIGHT-GREEN/YELLOW
         74.739,     73.841,     75.003;   % I5 - GRAY
        89.142,     201.013,    180.014;   % J2 - AQUA
        241.951,    156.773,     20.080;   % J3 - ORANGE/YELLOW
          4.339,    130.115,    169.925;   % J4 - BLUE/GREEN
         23.998,     24.722,     25.023;   % J5 - BLACK
        229.554,    119.893,    143.648;   % L4 - PINK/SKIN
        200.413,      8.903,     35.450;   % M4 - RED
        248.279,    248.007,    240.181;   % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            149.368,     12.440,     83.557;   % B2 - PINK/PURPLE
              5.162,    125.849,    210.264;   % B5 - SKY BLUE
             26.017,    170.120,    201.734;   % B6 - BLUE/GREEN
            107.234,     76.294,    170.417;   % C3 - PURPLE/BLUE
            108.762,    156.308,    215.428;   % C7 - PERIWINKLE
              4.397,    145.721,     94.138;   % D9 - FOREST GREEN
              0.827,      7.788,    122.153;   % E4 - BLUE
             12.939,     13.103,     13.133;   % E6 - BLACK
            252.719,    184.545,    153.204;   % E7 - SKIN
             40.203,    155.811,     56.305;   % F4 - GREEN
            123.339,    120.424,    118.937;   % H5 - GRAY
            126.358,     59.196,     28.597;   % I8 - BROWN
            252.455,    251.648,    246.633;   % J1 - WHITE
            234.034,    231.353,    229.056;   % J6 - WHITE/GRAY
            183.837,    225.487,    230.341;   % K5 - BLUE/WHITE
            183.310,    180.032,    178.486;   % K6 - GRAY
            119.391,    117.529,    113.779;   % K10 - GRAY
            214.435,     11.934,     24.582;   % L3 - RED
            238.886,    122.715,    121.875;   % L5 - PINK/SKIN
            254.525,     99.131,     21.494;   % L6 - ORANGE
            244.401,     35.125,      40.595;  % M5 - RED/ORANGE
            254.519,    186.101,     28.978;   % M6 - YELLOW
            249.132,    198.185,     14.246;   % M7 - YELLOW
            172.432,    187.548,     19.796;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              253.488,  252.663,    248.396;   % E5 - OUTER WHITE
              234.107,  231.326,    229.128;   % J6
              211.995,  207.612,    206.242;   % F5
              198.588,  194.110,    192.886;   % I6
              183.366,  179.894,    178.594;   % K6
              167.683,  166.521,    164.560;   % G5
              151.737,  150.188,    148.921;   % H6
              123.508,  120.307,    118.861;   % H5 - OUTER GRAY
              108.162,  107.389,    105.992;   % K7
               93.964,   93.105,     94.297;   % G6
               74.704,   73.795,     74.907;   % I5
               60.412,   60.897,     61.994;   % F6
               32.616,   32.494,     32.618;   % K8
               24.005,   24.714,     24.986;   % J5
               12.938,   13.178,     13.183;   % E6 - OUTER BLACK    
    ];