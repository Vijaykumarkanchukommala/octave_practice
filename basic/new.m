t=0:1/1e3:1
fm=10
x=sin(2*pi*fm*t)
subplot(2,1,1)
plot(t,x)
subplot(2,1,2)
f=fftshift(fft(x))
fr=-50:1:50
plot(t,abs(f))

