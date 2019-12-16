clear all; clc; close all;

imdata = imread('EstadioAzteca.jpg');
d = 0.1;
imdata = imnoise(imdata, 'salt & pepper',d);
imdata=im2double(imdata);
imdata = im2double(imdata,'indexed');
red= imdata(:, :, 1);
green = imdata(:, :, 2);
blue = imdata(:, :, 3);

original = cat(3, red, green, blue);
imshow(original);

[Red_A,Red_E,numIter_r] = pgrpca(red);
[Green_A,Green_E,numIter_g] = pgrpca(green);
[Blue_A,Blue_E,numIter_b] = pgrpca(blue);
 
A_rgb=cat(3, Red_A, Green_A, Blue_A);
imshow(A_rgb)
E_rgb=cat(3, Red_E, Green_E, Blue_E);
imshow(E_rgb)

imshow(imdata)
figure,imshow(A_rgb)
figure,imshow(E_rgb)