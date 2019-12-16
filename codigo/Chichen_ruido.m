clear all; clc; close all;



M = imread('chichen_itza.jpg');
M=im2double(M);
M = im2double(M,'indexed');
M= M(:, :, 1);
d = 0.1; % Porcentaje de pixeles afectados por ruido sal y pimienta
M = imnoise(M, 'salt & pepper', d); % Agregar ruido sal y pimienta a imagen


tic
[L,S,numIter] = pgrpca_2(M);
time = toc;

imshow(M)
figure,imshow(L)
figure,imshow(S)

size(M)
rangoM=rank(M)
rangoL=rank(L)
ceros=S==0;
E_0=sum(ceros(:))
time
numIter