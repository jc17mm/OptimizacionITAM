clear all; clc; close all;
% I = imread('subject04.wink');
% I=I(15:243,100:275);
% I2 = im2double(I);


I = imread('subject04.wink');
I=I(15:243,100:275);
I=im2double(I);

tic
%[A_hat,E_hat,numIter] = pgrpca(I);
[A_hat,E_hat,numIter] = pgrpca_2(I);
time = toc;

imshow(A_hat)
figure,imshow(E_hat)
figure,imshow(I)
figure,imshow(A_hat + E_hat)
