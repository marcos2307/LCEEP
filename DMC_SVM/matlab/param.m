% Periodo SVM

N = 1000;     %cantidad de pasos en un periodo (ver symetrical.v)
Ts = N*4e-6; %N*paso de SVM de la FPGA (ver symetrical_fourstep.v y symetrical.v)

 %% measurements
 i_fixed_gain = 10*1000/(3*100);
%output currents
ioa_offset = 0.09;
ioa_gain = 1;
iob_offset = 0.06;
iob_gain = 1;

%source currents
isa_offset = 0.1;
isa_gain = 1;
isb_offset = 0.3;
isb_gain = 1;



% voltages
vi_fixed_gain = 10*33000/(3*100*2.5);
%source voltage
via_offset = 1;
via_gain = 1;
vib_offset = 0.8;
vib_gain = 1;
vic_offset = -0.35;
vic_gain = 1;

%output voltage
voa_fixed_gain = 10*30000/(3*100*2.5);
voa_offset = 0.7;
voa_gain = 1;

%capacitor voltage
vca_offset = 0.8;
vca_gain = 1;
vcb_offset = 1.7;
vcb_gain = 1;
vcc_offset = 3;
vcc_gain = 1;

%clamp voltage
vclamp_offset = 11.7;
vclamp_gain = 10*(76000+47000)/(3*100*2.5);
clamp_threshold = 400;


