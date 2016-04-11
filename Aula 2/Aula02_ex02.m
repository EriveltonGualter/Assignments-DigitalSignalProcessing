%** EXERCICIO AULA02_EX02  **%

clear
clc

%f = input('Entre com a FREQUÊNCIA f desejada: ');
%Tmax = input('Entre com a TENPO DE OBSERVAÇÃO Tmax desejado: ');
%fs = input('Entre com a FREQUÊNCIA fs desejada: ');
nbits = input('Entre com a quantidade de BITS nbits desejada: ');

f =     500; % Hz
fs =    8e3; % Hz
Tmax =  1; %s
%nbits = 8; %bits

t = 0:(1/fs):Tmax;
x = sin(2*pi*500.*t);
plot(t,x,'blue');
hold on
delta_nivel = 2/(2^nbits);

xq = delta_nivel.*round(x/delta_nivel);
plot(t,xq,'red')
stem(t,xq);

sound(xq,fs)
N = Tmax/(1/fs)
