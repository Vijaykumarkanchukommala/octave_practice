%%Time specifications:
Fs = 1000;                      % samples per second
t = 0:1/Fs:0.5-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
x1 = sin(2*pi*Fc*t);
x2 = sin(2*pi*Fc*t+pi/2);

%Fourier Transform:
y1 = fftshift(fft(x1));
y2 = fftshift(fft(x2));

%%Plot the spectrum:
figure;
subplot(4,1,1) 
plot(t,x1)
xlabel('Time');
ylabel('Amplitude');
xlabel('Time');
title('Signal1');
grid on;
subplot(4,1,2) 
plot(t,x2,'r')
xlabel('Time');
ylabel('Amplitude');
xlabel('Time');
title('Signal2');
grid on;
subplot(4,1,3) 
plot(f,20*log10(abs(y1)));
xlabel('Frequency (in hertz)');
ylabel('Decibels');
title('Magnitude Response');
axis([0 70 -50 60]);
grid on;
subplot(4,1,4) 
plot(f,20*log10(abs(y2)),'r');
xlabel('Frequency (in hertz)');
ylabel('Decibels');
title('Magnitude Response');
axis([0 70 -50 60]);
grid on;
