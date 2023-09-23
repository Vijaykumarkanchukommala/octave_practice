t=0:1/1e3:1
Fs = 1000;                      % samples per second
t = 0:1/Fs:2-1/Fs;
N = length(t);

%%Frequency specifications:
f = (-N/2:N/2-1)*Fs/N;           % hertz

%%Sine wave:
Fc = 50;                       % hertz
