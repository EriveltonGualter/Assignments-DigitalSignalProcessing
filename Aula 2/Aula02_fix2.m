
freqs = [493.9 554.4 440 220 329.6]

fs = 2*max(freqs)*1.1; % fs > 2*fo
t = 0:(1/fs):1;

f1 = sin(2*pi*freqs(1)*t);
f2 = sin(2*pi*freqs(2)*t);
f3 = sin(2*pi*freqs(3)*t);
f4 = sin(2*pi*freqs(4)*t);
f5 = sin(2*pi*freqs(5)*t);

sound([f1 f2 f3 f4 f5],fs);

%% Exercicio de fixacação 2 - Aula 2
% Gerar 5 tons com as sequintes frequÊncias por 1 segundo [493.9 554.4 440 220 329.6]
% Nao use o loop 