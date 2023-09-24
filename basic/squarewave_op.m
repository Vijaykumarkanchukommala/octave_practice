%%Time specifications:
Fs = 4000;                      % samples per second
t = 0:1/Fs:2-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
pkg load signal;
x1 = square(2*pi*2*Fc*t);
x2 = square(2*pi*Fc*t);

%Fourier Transform:
y1 = fftshift(fft(x1,N));
y2 = fftshift(fft(x2,N));

%%Plot the spectrum:
figure;
subplot(4,1,1) 
plot(t,x1)
grid on;
xlabel('Time');
ylabel('amplitude');
title('Signal');
subplot(4,1,2) 
plot(t,x2,'r')
grid on;
xlabel('Time');
ylabel('amplitude');
title('Signal');
subplot(4,1,3) 
plot(f,20*log10(abs(y1)/N));
grid on;
ylabel('Decibels');
xlabel('Frequency (in hertz)');
title('Magnitude Response');
axis([0 800 -70 0]);
subplot(4,1,4) 
plot(f,20*log10(abs(y2)/N),'r');
grid on;
ylabel('Decibels');
xlabel('Frequency (in hertz)');
title('Magnitude Response');
axis([0 800 -70 0]);
