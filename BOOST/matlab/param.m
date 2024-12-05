%%parameters boost

T = 10e-3;

fixedgain_v1 = 10*44000/(3*100*2.5);
gain_v1 = 1;
offset_v1 = 0;

fixedgain_i1 = 10*1000/(3*100);
gain_i1 = 1;
offset_i1 = 0;

fixedgain_v2 = 10*10000/(3*100*2.5);
gain_v2 = 1;
offset_v2 = 0;

num = 1/500*ones(1,500);
den = [1, zeros(1,499)];