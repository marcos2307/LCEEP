close all;
load('rec1_021.mat')
a = rec1_021;
t = a.X.Data;
set = a.Y(1).Data;
ki = a.Y(2).Data;
kv = a.Y(3).Data;

ioa = a.Y(4).Data;
iob = a.Y(5).Data;
ioc = a.Y(7).Data;

iia = a.Y(6).Data;

phi_ref = a.Y(8).Data;
vo_ref = a.Y(16).Data;
freq_ref = a.Y(17).Data;


vclamp = a.Y(9).Data;

vca = a.Y(10).Data;
vcb = a.Y(11).Data;
vcc = a.Y(12).Data;

vsa = a.Y(13).Data;
vsb = a.Y(14).Data;
vsc = a.Y(15).Data;

voa = a.Y(18).Data;

figure(1)

plot(t, vsa);
hold on;
plot(t, vca);
plot(t, voa);
plot(t, vclamp);
plot(t, vo_ref);
plot(t, freq_ref);
legend('vsa','vca','voab', 'vclamp', 'vo_r','freq_ref')
%xlim([63.4 63.5])

figure(2)
plot(t, ioa);
hold on;
plot(t, iob);
plot(t, ioc);
%xlim([0 60]);
legend('ioa','iob','ioc')
%xlim([63.4 63.5])
figure(3)
plot(t, vsa);
hold on;
plot(t, iia);

legend('vsa','iia')
%xlim([63.4 63.5])
ylim([-15 15])