clear;
clc;
S = [
        -1 -1 -1;
        -1 -1 0;
        -1 -1 1;
        -1 0 -1;
        -1 0 0;
        -1 0 1;
        -1 1 -1;
        -1 1 0;
        -1 1 1;
        0 -1 -1;
        0 -1 0;
        0 -1 1;
        0 0 -1;
        0 0 0;
        0 0 1;
        0 1 -1;
        0 1 0;
        0 1 1;
        1 -1 -1;
        1 -1 0;
        1 -1 1;
        1 0 -1;
        1 0 0;
        1 0 1;
        1 1 -1;
        1 1 0;
        1 1 1;
        ];
Tm = 30e-6;
L = 12e-3;
R = 10;
C = 2200e-6;

fixed_gain_ia = 10*(1/10e-3);
fixed_gain_ib = 10*(1/10e-3);
fixed_gain_ic = 10*(1/10e-3);

fixed_gain_ipv = 10*1000/(3*100);
fixed_gain_ibat = 10*1000/(3*100);

fixed_gain_vc1 = 10*200;
fixed_gain_vc2 = 10*200;

fixed_gain_vpv = 10*10000/(3*100*2.5);
fixed_gain_vbat = 10*10000/(3*100*2.5);

gain_ia = 1;
gain_ib = 1;
gain_ic = 1;

gain_ipv= 1;
gain_ibat = 1;

gain_vc1 = 1;
gain_vc2 = 1;

gain_vpv = 1;
gain_vbat = 1;

offset_ia = 0;
offset_ib = 0;
offset_ic = 0;

offset_ipv = 0;
offset_ibat = 0;

offset_vc1 = -1.85;
offset_vc2 = 2.12;

offset_vpv = 0;
offset_vbat = 0;

estado = 1;


%entre 0 y 499
duty_boost = 250;
duty_hb = 1;


