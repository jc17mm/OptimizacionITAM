clear all; clc; close all;

M = imread('chichen_itza.jpg');
M=im2double(M);
M = im2double(M,'indexed');
red= M(:, :, 1);
green = M(:, :, 2);
blue = M(:, :, 3);

tic
[Red_L,Red_S,numIter_r] = pgrpca_2(red);
[Green_L,Green_S,numIter_g] = pgrpca_2(green);
[Blue_L,Blue_S,numIter_b] = pgrpca_2(blue);
time=toc;
 
L_rgb=cat(3, Red_L, Green_L, Blue_L);
S_rgb=cat(3, Red_S, Green_S, Blue_S);

imshow(M)
figure,imshow(L_rgb)
figure,imshow(S_rgb)


size(red)
rangoM=rank(red)
rangoL=rank(Red_L)
ceros=Red_S==0;
E_0=sum(ceros(:))
time
numIter=numIter_r+numIter_g+numIter_b

imshow(M)
figure,imshow(A_rgb)
figure,imshow(E_rgb)