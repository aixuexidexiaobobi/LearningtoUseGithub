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
title('Զ��Ŀ��ǿ��');
xlabel('Ƶ��f/Hz');
ylabel('Ŀ��ǿ��TS/dB');
% xlim([0 10])
% ylim([-55 -10])
% figure,
% plot(aa1(:),p);
% title('��һ����ѹ');
% xlabel('Ƶ��f/Hz');
% ylabel('��һ����ѹ/pa');














% %����----------------------------------
% f0= 20000;
% T=0.005;%ʱ��ʱ���ܳ�
% B= 20000;%����
% fs=400000;%����Ƶ��
% Ts=1/fs;%����ʱ����
% N=T/Ts;%���������
% k=B/T;%��Ƶб��
% t=linspace(0,T,N);
% y=exp(1i*(2*pi*f0*t+pi*k*t.^2));             %���Ե�Ƶ�źţ�LFM����ʱ�亯��
% %��ͼ---------------------------------------------
% figure,
% subplot(211);
% plot(t,real(y));title('LFM�ź�ʱ����');xlabel('ʱ��/s');ylabel('����');
% Y=fftshift(fft(y,N+1));
% f=linspace(-fs/2,fs/2,N+1);
% subplot(212);
% plot(f,abs(Y));title('LFM�ź�Ƶ��');xlabel('Ƶ��/Hz');ylabel('����');
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
