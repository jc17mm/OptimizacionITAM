clear all; clc; close all;

M = imread('EstadioAzteca.jpg');
M=im2double(M);
M = im2double(M,'indexed');
red= M(:, :, 1);
green = M(:, :, 2);
blue = M(:, :, 3);


[Red_L,Red_S,numIter_r] = pgrpca_2(red);
[Green_L,Green_S,numIter_g] = pgrpca_2(green);
[Blue_L,Blue_S,numIter_b] = pgrpca_2(blue);
 
L_rgb=cat(3, Red_L, Green_L, Blue_L);
S_rgb=cat(3, Red_S, Green_S, Blue_S);

imshow(M)
figure,imshow(L_rgb)
figure,imshow(S_rgb)
