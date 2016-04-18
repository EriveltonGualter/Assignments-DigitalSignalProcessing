% Aula 6 - Processamento de Imagens %
clear all, close all

load('Aula06_ex01.mat');

% Numero de pixels da imagem e numero de cores
n_pixels = size(X,1)*size(X,2);
n_cores = length(map);

% Carregando a image ( cores não-naturais)
figure(1);
image(X);

% Usando as cores do map
figure(2);
colormap(map);
image(X);
% 
% Alteração do brilho
figure(3);
colormap(map);
image(X);
brighten(0.5);

% Ampliação do Olho
figure(4);
Xolho = X(20:140, 150:225);
image(Xolho);
colormap(map);

% Ampliação do Nariz
figure(5);
Xolho = X(90:160, 20:120);
image(Xolho);
colormap(map);

figure(5);

subplot(2,2,1);
image(X);
colormap(map);

subplot(2,2,2);
X1 = zeros(size(X,2),size(X,1));
for i=1 : size(X,1)
    for j=1 : size(X,2)
        X1(j,i) = X(i,j);
    end
end
image(X1);
colormap(map);

subplot(2,2,3);
X2 = zeros(size(X,1),size(X,2));
ii = size(X,1);
for i=1 : size(X,1)
    for j=1: size(X,2)
        X2(i,j) = X(ii,j);
    end
    ii = ii-1;
end
image(X2);
colormap(map);

subplot(2,2,4);
X3 = zeros(size(X,1),size(X,2));
jj = size(X,2);
for j=1: size(X,2)
    for i=1 : size(X,1)
        X3(i,j) = X(i,jj);
    end
    jj = jj-1;
end
image(X3);
colormap(map);
