clear all;
close all;

% Định nghĩa dải Eb/No (dB)
EbNo_dB = -15:5:10;

% Chuyển đổi từ dB sang tỉ lệ tuyến tính
EbNo_linear = 10.^(EbNo_dB/10);

% Tính toán BER lý thuyết cho BPSK sử dụng công thức Pe = Q(sqrt(2*Eb/No))
BER_theoretical_BPSK = qfunc(sqrt(2*EbNo_linear));

% Tính toán BER lý thuyết cho QPSK sử dụng công thức Pe = Q(sqrt(2*Eb/No))
BER_theoretical_QPSK = 2*qfunc(sqrt(2*EbNo_linear));

f = [];
%% Vẽ đồ thị kết quả lý thuyết
figure;
semilogy(EbNo_dB, BER_theoretical_BPSK, 'r-o', 'LineWidth', 2);
hold on;
semilogy(EbNo_dB, BER_theoretical_QPSK, 'b-s', 'LineWidth', 2);
grid on;
xlabel('Eb/No (dB)');
ylabel('Tỉ lệ lỗi bit (BER)');
title('BER lý thuyết cho điều chế BPSK và QPSK');
legend('BPSK', 'QPSK với mã hóa Gray');
