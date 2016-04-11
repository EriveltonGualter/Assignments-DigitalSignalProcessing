% Aula 4 %
clc 
clear all 
close all  

%% Sinal de tempo discreto f=3x %%
figure(1)
n1=0:30;     %define o vetor n, neste caso com 31 pontos 
x1= 3*n1;     %define a função matemática que representa a sequência   
stem(n1,x1)   %plota o sinal, sempre através de raias. 
title ('Sinal amostrado') 
xlabel ('Amostras no tempo') 
ylabel ('Amplitude') 

%% Sinal Senoidal no tempo discreto %%
figure(2)
f = 10;           % define a frequência do sinal senoidal 
fs= 80;          % define a frequência de amostragem utilizada 
n2 = 0:29;         % define o vetor n com 30 amostras 
w = 2*pi*f/fs;    % define a frequência w 
x2 = sin(w*n2);      % encontra os valores de x  
stem(n2,x2) 
title ('Sinal amostrado') 
xlabel ('Amostras no tempo') 
ylabel ('Amplitude') 

%% Sinal Impulso %%
figure(3)
n_amostras=31;  
n3=0:( n_amostras -1);  
imp=zeros(1, n_amostras);  
imp(1)=1;  
stem(n3,imp);  
title ('Sinal amostrado') 
xlabel ('Amostras no tempo') 
ylabel ('Amplitude') 

%% Sinal x[n]    = 0.9Imp[n-5], para 0<=n<=19 %%
figure(4)
n_amostras =20;  
n=0:( n_amostras -1);  
imp=zeros(1, n_amostras);  
imp(6)= 0.9;  
stem(n,imp);  
title ('Sinal amostrado') 
xlabel ('Amostras no tempo') 
ylabel ('Amplitude') 

%% Sinal Degrau %%
figure(5)
n_amostras =21;  
n=-( n_amostras -1)/2: (n_amostras -1)/2;  
degrau=zeros(1, n_amostras);  
degrau(11:end)=1;  
stem(n,degrau);
title ('Sinal amostrado') 
xlabel ('Amostras no tempo') 
ylabel ('Amplitude') 

%% Sinal Rampa %%
figure(6)
npontos=21;  
n=-( n_amostras -1)/2: (n_amostras -1)/2;  
degrau=zeros(1, n_amostras);  
degrau(11:end)=1;  
rampa=n.*degrau;  
stem(n,rampa);
title ('Sinal amostrado') 
xlabel ('Amostras no tempo') 
ylabel ('Amplitude')

 