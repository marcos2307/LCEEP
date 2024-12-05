s = tf('s');
L = 10e-3;
R = 10;
sys = 1/(L*s+R);
P = 10;
I = 200;
cont = (s*P+I)/s;

sys_cont = feedback(cont*sys,1)
pole(sys_cont)