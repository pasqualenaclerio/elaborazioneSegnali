
clear all
close all


[y, Fs] = audioread("dsp01.wav");


%y è il segnale
%Fs è la frequenza di campionamento per la rappresentazione
T = 1/Fs;                     % tempo del segnale
t = seconds(0:T:(size(y,1)-1)*T); % trasformo in secondi il numero di campioni

plot(t,2*y)
title("Segnale audio")
xlabel("Tempo")
ylabel("Amplificazione")
legend("dsp01")
xlim("tight")
ylim([-4 4])

sound(y, Fs);

%%

L= 20000;


X = y + 0.01*randn(size(y)); %aggiungo il rumore
sound(X, Fs);

NFFT = 2^nextpow2(L); % approssimo una potenza di 2^L per velocizzare l'FFT
Y = fft(X);
f = Fs/2*linspace(0,1,NFFT/2+1);

% Plot single-sided amplitude spectrum.
%plot(f,2*abs(Y(1:NFFT/2+1))) 
%title('Single-Sided Magnitude Spectrum of y(t)')
%xlabel('Frequency (Hz)')
%ylabel('|Y(f)|')

%%
% Campionamento

tc=0.05;
timeS=(0:tc:size(y)-1);
xn=y(1:tc/T:length(t));
plot(xn)
sound(xn);
