clear all
close all

dt=.001;
t=(0:dt:10);

f = 2;

x=0.5*sin(2*pi*(1/f)*t);
 
DT=0.25;
T=(0:DT:10);
xn=x(1:DT/dt:length(t));

figure(1)

clf
plot(t,x)
axis([0 10 -1.1 1.1])
xlabel('time')
title('original time-continuous signal')
grid on
hold on
pause
stem(T,xn,'r')

return;
%% Rumore
clear all; clf;

R = 50;
dt =0.1;
d = rand(R,1)-0.5;   % rumore

m = (0:dt:R-1);
%s = sin(m);   % segnale
x  = d';                    % segnale rumoroso
figure(1);
%subplot(3,1,1);  stem(m,s);
%xlabel('Time index n'); ylabel('Amplitude'); title('Original uncorrupted sequence');
subplot(3,1,2);  stem(m,d);
xlabel('Time index n'); ylabel('Amplitude');  title('Noise');
subplot(3,1,3);  stem(m,x);
xlabel('Time index n'); ylabel('Amplitude');  title('Corrupted sequence');

return;