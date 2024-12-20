%%sensores
fixedgain_vdc = 10*44000/(3*100*2.5);
gain_vdc = 1;
offset_vdc = 0;

fixedgain_vpv = 10*10000/(3*100*2.5);
gain_vpv = 1;
offset_vpv = 0;

fixedgain_vbat = 10*10000/(3*100*2.5);
gain_vbat = 1;
offset_vbat = 0;

fixedgain_ipv = 10*1000/(3*100);
gain_ipv= 1;
offset_ipv = 0;

fixedgain_ibat = 10*1000/(3*100);
gain_ibat = 1;
offset_ibat = 0;

fixedgain_i = 10*1000/(3*100);
gain_iavsi = 1;
offset_iavsi = 0.2;
gain_ibvsi = 1;
offset_ibvsi = 0.2;
gain_icvsi = 1;
offset_icvsi = 0.2;

fixedgain_v = 10*22000/(3*100*2.5);
gain_vavsi = 1;
offset_vavsi = 0;
gain_vbvsi = 1;% no funciona este LEM de tension y ya no hay, se usa sonda de tension
offset_vbvsi = 0;
gain_vcvsi = 1;
offset_vcvsi = 0;


gain_ioavsi = 1;
offset_ioavsi = 0;
gain_iobvsi = 1;
offset_iobvsi = 0;
gain_iocvsi = 1;
offset_iocvsi = 0;


%control
v_dc_ref = 24;

num = 1/500*ones(1,500);
den = [1, zeros(1,499)];

d = 0.02;

gain_sinwave = 0.3;
N = 100;