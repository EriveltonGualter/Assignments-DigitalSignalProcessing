% Aula 04 - Operações com Sinais Discretos %

clc, clear all, close all

n = -5:5;

% Ex 1
figure(1)
imp = impulso(n-2);
stem(n,imp);
% Ex 2
figure(2)
deg = degrau(n-2);
stem(n,deg);

figure(3)
n = -5:5;
xa = 2*impulso(n-2)-impulso(n-4);
stem(n,xa);

figure(4)
n = 0:20;
xb = n.*(degrau(n)-degrau(n-10)) + 10.*exp(-0.3*n).*(degrau(n-10)-degrau(n-20));
stem(n,xb);