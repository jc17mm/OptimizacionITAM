clear all; clc; close all;

I = imread('subject04.wink');
d = 0.1; % Porcentaje de pixeles afectados por ruido sal y pimienta
I = imnoise(I, 'salt & pepper', d); % Agregar ruido sal y pimienta a imagen
I=I(15:243,100:275);
I=im2double(I);

tic
%[A_hat,E_hat,numIter] = pgrpca(I);
[A_hat,E_hat,numIter] = pgrpca_2(I);
time = toc;

imshow(I)
figure,imshow(E_hat)
figure,imshow(A_hat)
