clear all, close all

X=imread('Aula06_ex02.jpg');
Xred=X(:,:,1);
Xgreen=X(:,:,2);
Xblue=X(:,:,3);

% Image real
subplot(221)
image(X)

% Image 
subplot(222)
image(Xred)

% Image 
subplot(223)
image(Xgreen)

% Image 
subplot(224)
image(Xblue)