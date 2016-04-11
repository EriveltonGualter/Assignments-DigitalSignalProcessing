%% Exercicio de fixação 1 - Aula 04 %%
clc, clear all, close all

%% Diferenciador Digital y[n] = x[n] - x[n-1]
n = -40:40;

%% Item a %%
xna = 5*(degrau(n)-degrau(n-20));
xn1a = 5*(degrau(n-1)-degrau(n-21));
yn = xna - xn1a;
figure(1)
subplot(3,1,1);
stem(n,xna)
subplot(3,1,2);
stem(n,xn1a)
subplot(3,1,3);
stem(n,yn)

%% Item b %%
xnb  = n.*(degrau(n)-degrau(n-10))+(20-n).*(degrau(n-10)-degrau(n-20));
xn1b = (n-1).*(degrau((n-1))-degrau((n-1)-10))+(20-(n-1)).*(degrau((n-1)-10)-degrau((n-1)-20));
ynb  = xnb - xn1b;

figure(2)
subplot(3,1,1);
stem(n,xnb)
subplot(3,1,2);
stem(n,xn1b)
subplot(3,1,3);
stem(n,ynb)

%% Item c %%
w = pi/25;
xnc  = sin(w.*n).*(degrau(n)-degrau(n-100));
xn1c = sin(w.*(n-1)).*(degrau((n-1))-degrau((n-1)-100));
ync  = xnc - xn1c;

figure(3)
subplot(3,1,1);
stem(n,xnc)
subplot(3,1,2);
stem(n,xn1c)
subplot(3,1,3);
stem(n,ync)

