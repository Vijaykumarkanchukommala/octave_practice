%%Time specifications:
Fs = 8e3;                      % samples per second
t = 0:1/Fs:2-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fs1 = 500;                       % hertz
Fs2 = 2e3;                       % hertz
x1 = cos(2*pi*Fs1*t);
x2 = cos(2*pi*Fs2*t);

final_x=x1+x2;
N = length(final_x);

%Fourier Transform:
y = fftshift(fft(final_x,N));


%%Plot the spectrum:
figure;
%subplot(4,1,1) 
%plot(t,x1)
%xlabel('Time');
%ylabel('amplitude');
%title('Signal1');
%grid on;
%subplot(4,1,2) 
%plot(t,final_x)
%xlabel('Time');
%ylabel('amplitude');
%title('Signal3');
%grid on;
subplot(2,1,1) 
plot(f,20*log10(abs(y)),'r');
xlabel('Frequency (in hertz)');
ylabel('Decibels');
title('Magnitude Response');
grid on;

pkg load signal;
lp_coef=fir1(20,1500/Fs,'low');
k=filter(lp_coef,1,y);

l = fftshift(fft(k,N));
subplot(2,1,2) 
plot(f,5*log10(abs(l)),'r');
xlabel('Frequency (in hertz)');
ylabel('Decibels');
title('Magnitude Response');
grid on;

