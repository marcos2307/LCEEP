%%params halfbridge

v_dc_ref = 120;
d =0.5;

num = 1/500*ones(1,500);
den = [1, zeros(1,499)];

fixedgain_v1 = 10*44000/(3*100*2.5);
gain_v1 = 1;
offset_v1 = 0;

fixedgain_ibat = 10*1000/(3*100);
gain_ibat = 1;
offset_ibat = 0;