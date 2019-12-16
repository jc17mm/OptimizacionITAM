clear all; clc; close all;


M = imread('fce5noi8.gif');
M=im2double(M);

tic
[L,S,numIter] = pgrpca_2(M);
time = toc;

imshow(M)
figure,imshow(S)
figure,imshow(L)

size(M)
rangoM=rank(M)
rangoL=rank(L)
ceros=S==0;
E_0=sum(ceros(:))
time
numIter