m = 22;
r = 1000;
a = 0.5;
c = 1500;
aa2 = reshape(aa(:,end),length(aa(:,end))/m,m);
aa1 = aa(1:length(aa(:,end))/m,end-1);
x = 2 * pi * aa1 * a / c; 
% figure,
% plot(x,20*log10(r*abs(sum(aa2,2))));
TS = 20*log10(r*abs(sum(aa2,2)));
p = abs(sum(aa2,2))/max(abs(sum(aa2,2)));
plot(aa1(:),TS,'r');
grid on;
title('远场目标强度');
xlabel('频率f/Hz');
ylabel('目标强度TS/dB');
% xlim([0 10])
% ylim([-55 -10])
% figure,
% plot(aa1(:),p);
% title('归一化声压');
% xlabel('频率f/Hz');
% ylabel('归一化声压/pa');














% %参数----------------------------------
% f0= 20000;
% T=0.005;%时宽，时间总长
% B= 20000;%带宽
% fs=400000;%采样频率
% Ts=1/fs;%采样时间间隔
% N=T/Ts;%采样点个数
% k=B/T;%调频斜率
% t=linspace(0,T,N);
% y=exp(1i*(2*pi*f0*t+pi*k*t.^2));             %线性调频信号（LFM）的时间函数
% %作图---------------------------------------------
% figure,
% subplot(211);
% plot(t,real(y));title('LFM信号时域波形');xlabel('时间/s');ylabel('幅度');
% Y=fftshift(fft(y,N+1));
% f=linspace(-fs/2,fs/2,N+1);
% subplot(212);
% plot(f,abs(Y));title('LFM信号频谱');xlabel('频率/Hz');ylabel('幅度');
% amplitude = abs(Y);
% figure,
% plot(f(1001:1500),amplitude(1001:1500)'.*p);
% rec_sig_f = amplitude(1001:1500)'.*p;
% 
% 
% y_fft = fft(y); 
% y1=ifft(rec_sig_f);
% figure;
% plot(real(y1));
% 
% 
% 
% 
% 
% 
% 
% 
