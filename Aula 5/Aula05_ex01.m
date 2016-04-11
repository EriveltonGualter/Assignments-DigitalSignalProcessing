clear all
close all
clc

% Exempo
% a=[1 2 3];
% na=0:length(a)-1;
% b=[9 8 7 10];
% nb= 0:(length(b)-1)
% y=conv(a,b);
% ny=0:(length(y)-1)

a=[1 2 3];
na=0:length(a)-1;
b=[9 8 7 10];
nb= 0:(length(b)-1);

[y1,ny1]=conv1(a,b,na,nb);

figure(1)
subplot(1,3,1); stem(na,a)
subplot(1,3,2); stem(nb,b)
subplot(1,3,3); stem(ny1,y1)

c=[1 2 3]
nc=-4:-4+length(c)-1;
d=[9 8 7 10]
nd= 1:1+(length(d)-1);

[y2,ny2]=conv1(c,d,nc,nd);

figure(2)
subplot(1,3,1); stem(nc,c)
subplot(1,3,2); stem(nd,d)
subplot(1,3,3); stem(ny2,y2)