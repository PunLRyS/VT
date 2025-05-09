EbNo_dB = -15:5:10;
EbNo_tt = 10.^(EbNo_dB/10);
EbNo_MP = [-5 0 5 10]

Ber_LT = qfunc(sqrt(2*EbNo_tt));
Ber_MP = [0.2135 0.07892 0.005987 0];

figure;
semilogy(EbNo_dB,Ber_LT,EbNo_MP,Ber_MP,'r--+','LineWidth',2);
hold on;
grid on;

