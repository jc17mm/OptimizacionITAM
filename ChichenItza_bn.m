clear all; clc; close all;

M = imread('chichen_itza.jpg');
M=im2double(M);
M = im2double(M,'indexed');
red= M(:, :, 1);

tic
[L,S,numIter] = pgrpca_2(red);
time = toc;

imshow(red)
figure,imshow(L)
figure,imshow(S)

size(red)
rangoM=rank(red)
rangoL=rank(L)
ceros=S==0;
E_0=sum(ceros(:))
time
numIter
