%% Exercicio de fixação 2 - Aula 03 %%
% Para gerar um ruído gaussiano de potência P pode-se usar o comando 
% r=P*randn(1,N), onde N é a quantidade de amostras do ruído. Considere 
% agora que x[n] é uma sequência aleatória de 1000 bits (0 ou 1). Faça um 
% programa que varie o valor de   e gere um gráfico que relacione a potência 
% do ruído e a taxa de erro de bit.

%% Programa
clear all
close all

N = 5;

x = randi([0 1],1,N);


for P=1:100
    r = randn(1,N);
    rp = P*r;
    rp(rp>=0.5) = 1;
    rp(rp <0.5) = 0;
    taxa_erro(P) = sum(xor(rp,x));
end

plot(taxa_erro);


