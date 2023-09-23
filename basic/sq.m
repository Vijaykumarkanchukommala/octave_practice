%%Time specifications:
Fs = 1000;                      % samples per second
t = 0:1/Fs:2-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
x = square(2*pi*Fc*t);

%Fourier Transform:
y = fftshift(fft(x,N));

%%Plot the spectrum:
figure;
subplot(3,1,1) 
plot(t,x)
grid on;
xlabel('Time');
ylabel('amplitude');
title('Signal');
subplot(3,1,2) 
plot(f,abs(y)/N);
grid on;
xlabel('Frequency (in hertz)');
title('Magnitude Response');
subplot(3,1,3) 
plot(f,20*log10(abs(y)/N),'r');
grid on;
ylabel('Decibels');
xlabel('Frequency (in hertz)');
title('Magnitude Response');
axis([0 500 -27 4]);
