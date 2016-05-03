clear all, close all

fs = 8e3; % kHz
fc = 1e3; % kHz
Deltaf = 400; % Hz

hpb = passa_baixa(Deltaf, fc, fs); 
N=length(hpb);
% stem(0:N-1,hpb)

count = 1;
n = 0:999;

for f=0:10:7950
    x= sin(2*pi*f*n/fs);
    y = conv(x,hpb);
    H(count) = (max(abs(y)))
    count = count + 1;
end

% sound(y,fs)
% pause(13);
f = 0:10:7950;
plot(f, H)