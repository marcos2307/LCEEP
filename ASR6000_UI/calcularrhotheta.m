clc;
clear;
Amp = 50;

%type 1
fprintf('Type 1\n');
d = 0.5;
a = Amp*(1-d);
b = Amp*(-0.5*(1 + sqrt(3)*1i));
c = Amp*(-0.5*(1 - sqrt(3)*1i));
fprintf('d:%d\n', d);
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi);
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi);
fprintf('b:(%d,%d)\n', abs(c), angle(c)*180/pi);
d = 0.3;
a = Amp*(1-d);
b = Amp*(-0.5*(1 + sqrt(3)*1i));
c = Amp*(-0.5*(1 - sqrt(3)*1i));
fprintf('d:%d\n', d)
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi)
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi)
fprintf('c:(%d,%d)\n', abs(c), angle(c)*180/pi)
d = 0.2;
a = Amp*(1-d);
b = Amp*(-0.5*(1 + sqrt(3)*1i));
c = Amp*(-0.5*(1 - sqrt(3)*1i));
fprintf('d:%d\n', d)
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi)
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi)
fprintf('c:(%d,%d)\n', abs(c), angle(c)*180/pi)

%type 2
fprintf('Type 2\n');
d = 0.5;
a = Amp;
b = Amp*(-0.5*(1 + (1-d)*sqrt(3)*1i));
c = Amp*(-0.5*(1 - (1-d)*sqrt(3)*1i));
fprintf('d:%d\n', d);
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi);
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi);
fprintf('b:(%d,%d)\n', abs(c), angle(c)*180/pi);
d = 0.3;
a = Amp;
b = Amp*(-0.5*(1 + (1-d)*sqrt(3)*1i));
c = Amp*(-0.5*(1 - (1-d)*sqrt(3)*1i));
fprintf('d:%d\n', d)
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi)
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi)
fprintf('c:(%d,%d)\n', abs(c), angle(c)*180/pi)
d = 0.2;
a = Amp;
b = Amp*(-0.5*(1 + (1-d)*sqrt(3)*1i));
c = Amp*(-0.5*(1 - (1-d)*sqrt(3)*1i));
fprintf('d:%d\n', d)
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi)
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi)
fprintf('c:(%d,%d)\n', abs(c), angle(c)*180/pi)

%type 3
fprintf('Type 3\n');
d = 0.5;
a = Amp*(1-d);
b = Amp*(1-d)*(-0.5*(1 + sqrt(3)*1i));
c = Amp*(1-d)*(-0.5*(1 - sqrt(3)*1i));
fprintf('d:%d\n', d);
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi);
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi);
fprintf('b:(%d,%d)\n', abs(c), angle(c)*180/pi);
d = 0.3;
a = Amp*(1-d);
b = Amp*(1-d)*(-0.5*(1 + sqrt(3)*1i));
c = Amp*(1-d)*(-0.5*(1 - sqrt(3)*1i));
fprintf('d:%d\n', d)
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi)
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi)
fprintf('c:(%d,%d)\n', abs(c), angle(c)*180/pi)
d = 0.2;
a = Amp*(1-d);
b = Amp*(1-d)*(-0.5*(1 + sqrt(3)*1i));
c = Amp*(1-d)*(-0.5*(1 - sqrt(3)*1i));
fprintf('d:%d\n', d)
fprintf('a:(%d,%d)\n', abs(a), angle(a)*180/pi)
fprintf('b:(%d,%d)\n', abs(b), angle(b)*180/pi)
fprintf('c:(%d,%d)\n', abs(c), angle(c)*180/pi)
