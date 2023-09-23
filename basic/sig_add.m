%%Time specifications:
Fs = 1000;                      % samples per second
t = 0:1/Fs:2-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
x = sin(2*pi*Fc*t);
x1 = sin(2*pi*3*Fc*t);
x2 = sin(2*pi*5*Fc*t);
x3 = sin(2*pi*7*Fc*t);
x4 = sin(2*pi*9*Fc*t);

final_x=x+x1+x2+x3+x4

%Fourier Transform:
y = fftshift(fft(final_x,N));


%%Plot the spectrum:
figure;
subplot(4,1,1) 
plot(t,x)
xlabel('Time');
ylabel('amplitude');
title('Signal1');
subplot(4,1,2) 
plot(t,x1)
xlabel('Time');
ylabel('amplitude');
title('Signal2');
subplot(4,1,3) 
plot(t,final_x)
xlabel('Time');
ylabel('amplitude');
title('Signal3');
subplot(4,1,4) 
plot(f,20*log10(abs(y)),'r');
xlabel('Frequency (in hertz)');
title('Magnitude Response');
