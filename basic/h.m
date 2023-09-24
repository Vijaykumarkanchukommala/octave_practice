%%Time specifications:
Fs = 1000;                      % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 1;                  % seconds
t = 0:dt:StopTime-dt;
N = length(t);

%%Frequency specifications:
dF = Fs/N;                      % hertz
f = -Fs/2:dF:Fs/2-dF;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
x = sin(2*pi*Fc*t);

%Fourier Transform:
y = fftshift(fft(x,N));

%%Plot the spectrum:
figure;
subplot(2,1,1) 
plot(t,x)
xlabel('Time');
ylabel('amplitude');
title('Signal');
subplot(2,1,2) 
plot(f,20*log10(abs(y)));
xlabel('Frequency (in hertz)');
title('Magnitude Response');
