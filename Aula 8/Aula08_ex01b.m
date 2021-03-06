
clc
clear all
fo=500;
fs=8000;
Namostras=16;
Ts=1/fs;
Tmax=(Namostras/fo) - 1/fs;
t=0:Ts:Tmax;
x=cos(2*pi*fo*t)
stem(t,x);
title('Gr�fico de Cosseno');
xlabel('t');
ylabel('x(t)');
figure;
X=fft(x)
N=length(X);
k=0:N-1;
w=k*2*pi/N;
f=w*fs/(2*pi);
subplot(3,1,1);
stem(k,real(X));
title('Gr�fico de X(k) [Parte real]');
xlabel('k');
ylabel('x(k)');
subplot(3,1,2);
stem(w,real(X));
title('Gr�fico de  X(w) [Parte real]');
xlabel('w');
ylabel('x(w)');
subplot(3,1,3);
stem(f,real(X));
hold on
title('Gr�fico de  X(f) [Parte real]');
xlabel('f');
ylabel('x(f)');
X1=X(1:(N/2)+1);
F1=f(1:(N/2)+1);
stem(F1,X1,'r');
figure;
subplot(3,1,1);
stem(k,imag(X));
title('Gr�fico de X(k)[Parte imagin�ria]');
xlabel('k');
ylabel('x(k)');
subplot(3,1,2);
stem(w,imag(X));
title('Gr�fico de  X(w) [Parte imagin�ria]');
xlabel('w');
ylabel('x(w)');
subplot(3,1,3);
stem(f,imag(X));
title('Gr�fico de  X(f) [Parte imagin�ria]');
xlabel('f');
ylabel('x(f)');