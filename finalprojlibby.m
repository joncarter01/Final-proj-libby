[y,FS] = audioread("KushSound.mp3");

FT=abs(fftshift(fft(y)));
t2=linspace(-FS/2,FS/2,length(FT));

rezheight = max(abs(FT));
rezval = find(FT==rezheight)
rezfreq = t2(rezval)

figure
subplot(3,1,1)
plot(t2,y)

subplot(3,1,2)
plot(t2,FT)
xlim([0 500])

subplot(3,1,3)
plot(t2,angle(FT))
xlim([0 500])

soundsc(ifft(abs(FT)),FS)