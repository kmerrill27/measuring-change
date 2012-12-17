%
% Calculates deltaE values for two matrices of L*a*b* values using
% CIE 2000 formula
%
function deltaE_2000 = calc_deltaE_2000(lab1, lab2)

L1 = lab1(:,1)';
a1 = lab1(:,2)';
b1 = lab1(:,3)';

L2 = lab2(:,1)';
a2 = lab2(:,2)';
b2 = lab2(:,3)';

% Default parametric factors 
kl = 1;
kc = 1;
kh = 1;

C1 = sqrt(a1.^2 + b1.^2);
C2 = sqrt(a2.^2 + b2.^2);
C_comp = (C1 + C2)/2;
G = 0.5 * (1 - sqrt((C_comp.^7)./(C_comp.^7 + 25^7)));

% Weighting functions
L_prime = (L1 + L2)/2;
C_prime = (C1 + C2)/2;

a1_prime = (1+G).*a1;
a2_prime = (1+G).*a2;
C1_prime = sqrt(a1_prime.^2+b1.^2);
C2_prime = sqrt(a2_prime.^2+b2.^2);
deltaL_prime = (L2 - L1);
deltaC_prime = (C2 - C1);

% Compute product of chromas and locations at which it is zero
C_prime_prod = (C1_prime.*C2_prime);
zcidx = find(C_prime_prod == 0);

% Ensure hue is between 0 and 2*pi
h1_prime = atan2(b1, a1_prime);
h1_prime = h1_prime + 2*pi*(h1_prime < 0);  % rollover ones that come -ve
h1_prime(find((abs(a1_prime) + abs(b1))== 0)) = 0;
h2_prime = atan2(b2, a2_prime);
h2_prime = h2_prime + 2*pi*(h2_prime < 0);
h2_prime(find((abs(a2_prime)+abs(b2))==0) ) = 0;

% Compute hue difference
deltah_prime = (h2_prime - h1_prime);
deltah_prime = deltah_prime - 2*pi*(deltah_prime > pi);
deltah_prime = deltah_prime + 2*pi*(deltah_prime < (-pi) );
 % If either chroma is zero, set chroma difference to zero
deltah_prime(zcidx) = 0;
deltaH_prime = 2*sqrt(C_prime_prod).*sin(deltah_prime/2);

% Compute average hue
h_prime = (h1_prime + h2_prime)/2;
% Find where absolute hue diff exceeds 180 degrees 
h_prime = h_prime - (abs(h1_prime - h2_prime) > pi)*pi;
h_prime = h_prime + (h_prime < 0)*2*pi; % rollover ones the come -ve
% If either chroma is zero, set mean hue to sum of chromas
h_prime(zcidx) = h1_prime(zcidx) + h2_prime(zcidx);

Lpm502 = (L_prime - 50).^2;
Sl = 1 + 0.015*Lpm502./sqrt(20+Lpm502);  
Sc = 1+0.045*C_prime;
T = 1 - 0.17*cos(h_prime - pi/6 ) + 0.24*cos(2*h_prime) + ...
    0.32*cos(3*h_prime+pi/30) - 0.20*cos(4*h_prime-63*pi/180);
Sh = 1 + 0.015*C_prime.*T;
delthetarad = (30*pi/180)*exp(- ( (180/pi*h_prime-275)/25).^2);
Rc =  2*sqrt((C_prime.^7)./(C_prime.^7 + 25^7));
RT =  -sin(2*delthetarad).*Rc;

klSl = kl*Sl;
kcSc = kc*Sc;
khSh = kh*Sh;

% The CIE 20000 color difference
deltaE_2000 = sqrt((deltaL_prime./klSl).^2 + (deltaC_prime./kcSc).^2 + ...
    (deltaH_prime./khSh).^2 + RT.*(deltaC_prime./kcSc).*(deltaH_prime./khSh));
deltaE_2000 = transpose(deltaE_2000);

end

