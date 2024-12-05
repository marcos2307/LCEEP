load('Type1v80s64.mat');
load('Type2V80S52.9.mat')
load('T1v24s19p2.mat')
load('T1v12s9p6.mat')
%variables
a = Type1v80s64;        %Type2V80S52_9; %Type1v80s64;
t = a.X.Data;

%source voltage and currents
vian = a.Y(13).Data;
vibn = a.Y(14).Data;
vicn = a.Y(15).Data;

isa = a.Y(4).Data;
isb = a.Y(5).Data;
isc = a.Y(6).Data;

lim1 = [13.1 13.6];
lim2 = [4 5];

figure(1)
plot(t,vian);
hold on
plot(t,vibn);
plot(t,vicn);
plot(t,isa);
plot(t,isb);
plot(t,isc);
xlim(lim2)

%capacitor voltage
vcan = a.Y(10).Data;
vcbn = a.Y(11).Data;
vccn = a.Y(12).Data;

figure(2);

plot(t,vcan);
hold on
plot(t,vcbn);
plot(t,vccn);
xlim(lim2)


%output voltage
voa = a.Y(16).Data;
figure(3);
plot(t,voa);
xlim(lim2)

%reference voltage
vrefa = a.Y(7).Data;
vrefb = a.Y(8).Data;
figure(4);
plot(t,vrefa);
hold on
plot(t,vrefb);
xlim(lim2)


%output currents
ioa = a.Y(1).Data;
iob = a.Y(2).Data;
ioc = a.Y(3).Data;

figure(5);

plot(t,ioa);
hold on
plot(t,iob);
plot(t,ioc);
xlim(lim2)

%output voltage
vcl = a.Y(9).Data;
figure(6);
plot(t,vcl);
xlim(lim2)
