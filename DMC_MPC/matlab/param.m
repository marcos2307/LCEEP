%% parametros del control MPC
R = 10;
L = 10e-3;
Ts = 20e-6;

S = [
     1 0 0 0 1 0 0 1 0; %+1
     0 1 0 1 0 0 1 0 0;
     0 1 0 0 0 1 0 0 1; %+2
     0 0 1 0 1 0 0 1 0;
     0 0 1 1 0 0 1 0 0; %+3
     1 0 0 0 0 1 0 0 1;
     0 1 0 1 0 0 0 1 0; %+4
     1 0 0 0 1 0 1 0 0;
     0 0 1 0 1 0 0 0 1; %+5
     0 1 0 0 0 1 0 1 0;
     1 0 0 0 0 1 1 0 0; %+6
     0 0 1 1 0 0 0 0 1;
     0 1 0 0 1 0 1 0 0; %+7
     1 0 0 1 0 0 0 1 0;
     0 0 1 0 0 1 0 1 0; %+8
     0 1 0 0 1 0 0 0 1;
     1 0 0 1 0 0 0 0 1; %+9
     0 0 1 0 0 1 1 0 0;
     1 0 0 1 0 0 1 0 0; %0A
     0 1 0 0 1 0 0 1 0; %0B
     0 0 1 0 0 1 0 0 1 %0C
     ];

 %% mediciones
io_fixed_gain = 10*1000/(3*100);
ioa_offset = 0.12;
ioa_gain = 1;
iob_offset = 0.06;
iob_gain = 1;
ioc_offset = -0.1;
ioc_gain = 1;

vi_fixed_gain = 10*44;
via_offset = 2.2;
via_gain = 1;
vib_offset = 3;
vib_gain = 1;
vic_offset = 4.2;
vic_gain = 1;

vi_sonda_gain = 10*200;
io_sonda_gain = 10/0.010;


vclamp_offset = 10.5;
vclamp_gain = 1010;
clamp_threshold = 200;




