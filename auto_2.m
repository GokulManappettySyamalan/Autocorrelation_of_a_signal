Fs=100;
T=1/Fs;
t=0:T:10-T;

S1=0.8*cos(2*pi*15*t);
subplot(3,1,1);

plot(t,S1);
xlabel('Time');
ylabel('Amplitude');
title('Signal 1');

subplot(3,1,2);
y=xcorr(S1);
plot(y);
xlabel('time');
ylabel('Amplitude');
title('Autocorrelation of input signal');

subplot(3,1,3);
y_1=autocorr(S1);
plot(y_1);
xlabel('time');
ylabel('Amplitude');
title('Autocorrelation of input signal using autocorr');