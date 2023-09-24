%%Time specifications:
Fs = 6000;                      % samples per second
t = 0:1/Fs:0.5-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
x = sin(2*pi*Fc*t);
x1 = (1/3)*sin(2*pi*3*Fc*t);
x2 = (1/5)*sin(2*pi*5*Fc*t);
x3 = (1/7)*sin(2*pi*7*Fc*t);
x4 = (1/9)*sin(2*pi*9*Fc*t);
x5 = (1/11)*sin(2*pi*11*Fc*t);
x6 = (1/13)*sin(2*pi*13*Fc*t);
x7 = (1/15)*sin(2*pi*15*Fc*t);
x8 = (1/17)*sin(2*pi*17*Fc*t);

final_x=x+x1+x2+x3+x4+x5+x6+x7+x8

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
title('Final');
subplot(4,1,4) 
plot(f,20*log10(abs(y)),'r');
xlabel('Frequency (in hertz)');
title('Magnitude Response');
axis([0 800 -50 80]);
