%
% Image: C2_android.jpg
% Samsung Galaxy 3
%

% RGB values used to calculate RGB->XYZ transform
RGB = [
        136.747,    153.835,    170.422; % A3 - GRAY
         93.622,    102.796,    112.316; % B4 - PURPLE/RED
        101.041,    194.209,    247.338; % C5 - SKY BLUE
         77.818,    184.582,    145.060; % C9 - FOREST GREEN
        200.769,    167.668,    161.487; % D8 - SKIN
        222.421,    133.159,    68.181;  % E3 - ORANGE
         71.030,    112.125,    217.565; % F3 - BLUE/PURPLE
        201.190,    216.368,    230.888; % F5 - GRAY/WHITE
         94.001,    145.233,    210.192; % G2 - HOUSE BLUE
        201.786,     91.454,    119.221; % G3 - RED/PINK
        162.779,    180.120,    197.949; % G5 - GRAY
        141.359,     97.517,     81.798; % G7 - BROWN
        222.427,    201.692,     56.146; % H4 - YELLOW
         31.092,    142.655,     60.677; % H9 - GREEN
        134.900,    154.670,    215.861; % I2 - PERIWINKLE
        152.910,    199.678,     89.083; % I3 - LIGHT-GREEN/YELLOW
         76.098,     90.385,    110.823; % I5 - GRAY
        102.442,    210.672,    222.652; % J2 - AQUA
        213.557,    166.682,     68.197; % J3 - ORANGE/YELLOW
         25.501,    160.966,    218.231; % J4 - BLUE/GREEN
         44.315,     57.902,     74.961; % J5 - BLACK
        204.834,    151.046,    184.979; % L4 - PINK/SKIN
        190.571,     69.330,     98.421; % M4 - RED
        230.687,    244.238,    253.734; % N1 - WHITE
    ];

% RGB values used to test calculated RGB->XYZ transform
RGB_test = [
            160.310,     78.483,    144.470;   % B2 - PINK/PURPLE
             58.748,    173.367,    248.684;   % B5 - SKY BLUE
             72.312,    196.977,    243.019;   % B6 - BLUE/GREEN
            121.823,    128.761,    207.255;   % C3 - PURPLE/BLUE
            124.817,    184.675,    247.017;   % C7 - PERIWINKLE
             24.562,    161.336,    128.147;   % D9 - FOREST GREEN
             42.656,     73.671,    187.622;   % E4 - BLUE
             25.214,     23.933,     26.564;   % E6 - BLACK
            226.640,    192.955,    183.934;   % E7 - SKIN
             52.093,    163.373,     88.418;   % F4 - GREEN
            118.460,    134.250,    153.100;   % H5 - GRAY
            112.773,     77.474,     66.847;   % I8 - BROWN
            232.162,    245.090,    254.232;   % J1 - WHITE
            210.869,    229.546,    240.937;   % J6 - WHITE/GRAY
            179.327,    228.849,    245.862;   % K5 - BLUE/WHITE
            170.661,    191.480,    210.540;   % K6 - GRAY
            110.885,    129.773,    149.813;   % K10 - GRAY
            203.874,     73.033,     82.601;   % L3 - RED
            208.674,    146.721,    160.573;   % L5 - PINK/SKIN
            225.864,    112.932,     55.923;   % L6 - ORANGE
            220.790,     84.383,     87.062;   % M5 - RED/ORANGE
            230.502,    184.213,     64.238;   % M6 - YELLOW
            215.061,    192.592,     37.424;   % M7 - YELLOW
            155.624,    179.325,     44.163;   % M8 - YELLOW/GREEN    
    ];

% RGB gray scale values used to calculate inverse gamma
gamma_RGB = [
              233.770,  243.536,    250.253;   % E5 - OUTER WHITE
              210.975,  229.496,    240.808;   % J6
              201.312,  216.371,    230.951;   % F5
              183.071,  200.600,    217.239;   % I6
              170.650,  191.409,    210.535;   % K6
              162.789,  180.150,    197.971;   % G5
              145.746,  162.849,    181.292;   % H6
              118.287,  134.404,    153.008;   % H5 - OUTER GRAY
              102.095,  119.483,    139.255;   % K7
               89.333,  104.910,    123.180;   % G6
               76.210,   90.417,    110.793;   % I5
               69.215,   81.420,     98.300;   % F6
               51.589,   63.372,     73.581;   % K8
               44.609,   57.911,     74.727;   % J5
               34.877,   44.346,     55.175;   % E6 - OUTER BLACK    
    ];
