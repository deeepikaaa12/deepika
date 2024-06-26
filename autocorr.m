% Set seed for reproducibility
rng(42);

% Generate two random signals
signal_length = 1000;
signal_1 = randn(1, signal_length);
signal_2 = randn(1, signal_length);

% Compute autocorrelation
autocorr_result = xcorr(signal_1, signal_2);

% Plot autocorrelation
lags = -(signal_length - 1):(signal_length - 1);
figure;
plot(lags, autocorr_result);
title('Autocorrelation of Random Signals');
xlabel('Lag');
ylabel('Autocorrelation');
grid on;

% Compute and plot power spectral density
[psd, frequencies] = pwelch(signal_1, [], [], [], 1);
figure;
semilogy(frequencies, psd);
title('Power Spectral Density of Signal 1');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;
[psd, frequencies] = pwelch(signal_2, [], [], [], 1);
figure;
semilogy(frequencies, psd);
title('Power Spectral Density of Signal 2');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');
grid on;