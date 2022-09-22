function [absIQ]=IQ_process(data)

data_1= data(1:2:end);
data_2= data(2:2:end);

IQ1=data_1+i*data_2;
% figure;plot(abs(IQ1));

IQ=abs(IQ1);

[a1,b1]=envelope(IQ,8000,'peak');
% figure;plot(IQ);
% hold on
% plot(a1,'linewidth',1.5);
% legend('abs','env')
% hold off
% figure;plot(a1);ylim([0 0.02]);

index=find(IQ>0.005,1);
absIQ=a1(index:50000:end);
% figure;plot(down1);
