%% Exercicio de fixa��o 1 - Aula 03 %%
%  A partir dos comandos do item anterior, substitua a sequ�ncia xd[n] por
%  uma sequencia de 50 n�meros zeros seguidos de 50 n�meros uns [0 0 0 ...1 1 1 1] 
%  e a sequencia r[n] por uma sequ�ncia de valores aleat�rios, obtidos atrav�s 
%  da fun��o randn.  
%  Gere os gr�ficos de xd[n], r[n] e yd[n] na mesma figura. Utilize para isso
%  o comando subplot, com tr�s linhas de gr�ficos.   

%% Programa
clear all
close all

xd = zeros(1,100);
xd(1,51:end) = 1;

r = randn(1,100);
A = 0.7;

y = A.*xd+r;
yd(y>=0.5) = 1;
yd(y <0.5) = 0;

subplot(3,1,1);
plot(xd);
ylabel('xd');
xlabel('n amostras');
subplot(3,1,2);
plot(r);
ylabel('r');
xlabel('n amostras');
subplot(3,1,3);
plot(yd);
ylabel('yd');
xlabel('n amostras');
