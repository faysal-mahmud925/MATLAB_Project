function ex1()
% ex1.m - Exercise 1 with full playback
clearvars; close all; clc;
S = load('audio1.mat');
x = S.x; Fs = S.Fs;
disp('Playing original corrupted signal...');
player = audioplayer(x, Fs);
playblocking(player);
N = numel(x);
f_ax = (0:N-1) * (Fs/N);
X = fft(x);
figure('Name','Original Spectrum','Color','w');
semilogy(f_ax(1:N/2), abs(X(1:N/2)), 'LineWidth',1.4);
grid on; box on;
xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('FFT of x (corrupted)');
freqs = [200, 10000];
x_clean = x;
for f0 = freqs
[b,a] = NF_design(f0, Fs);
x_clean = filter(b, a, x_clean);
end
disp('Playing cleaned signal...');
player = audioplayer(x_clean, Fs);
playblocking(player);
Xc = fft(x_clean);
figure('Name','Notch Comparison','Color','w');
semilogy(f_ax(1:N/2), abs(X(1:N/2)), '--','LineWidth',1.2); hold on;
semilogy(f_ax(1:N/2), abs(Xc(1:N/2)), '-','LineWidth',1.2); hold off;
grid on; box on;
xlabel('Frequency (Hz)'); ylabel('Magnitude');
title('Original vs Filtered Spectrum');
legend(‘Original','Filtered','Location','northeast','Box','off');
x_new = x_clean;
save(‘audioNew.mat','x_new','Fs');
end
function [b,a] = NF_design(f0, Fs)
Q = 30; omega = 2*pi*f0/Fs;
r = 1 - pi*f0/(Q*Fs);
b = [1, -2*cos(omega), 1];
a = [1, -2*r*cos(omega), r^2];
end
