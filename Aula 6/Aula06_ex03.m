load Aula06_ex01

load('Aula06_ex01.mat');
N=25;

figure(1);
subplot(211);
Yvert=filter(ones(1,N)/N,1,X);
image(Yvert);
colormap(map);

Xrec=filter(1,ones(1,N)/N, Yvert);
subplot(212);
image(Xrec);
colormap(map);

figure(2);
subplot(211);
Yvert=filter(ones(1,N)/N,1,X');
image(Yvert');
colormap(map);

Xrec=filter(1,ones(1,N)/N, Yvert);
subplot(212);
image(Xrec');
colormap(map);
