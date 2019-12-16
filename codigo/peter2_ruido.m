clear all; clc; close all;

peter = imread('PPSP3.jpg');
peter=im2double(peter);
d = 0.1; % Porcentaje de pixeles afectados por ruido sal y pimienta
peter = imnoise(peter, 'salt & pepper', d); % Agregar ruido sal y pimienta a imagen

peter=peter(:,150:500,:);
peter = im2double(peter,'indexed');
red= peter(:, :, 1);
green = peter(:, :, 2);
blue = peter(:, :, 3);

original = cat(3, red, green, blue);
imshow(original);

%  [Red_A,Red_E,numIter_r] = pgrpca(red);
%  [Green_A,Green_E,numIter_g] = pgrpca(green);
%  [Blue_A,Blue_E,numIter_b] = pgrpca(blue);
 
 [Red_A,Red_E,numIter_r] = pgrpca_2(red);
 [Green_A,Green_E,numIter_g] = pgrpca_2(green);
 [Blue_A,Blue_E,numIter_b] = pgrpca_2(blue);
 
 A_rgb=cat(3, Red_A, Green_A, Blue_A);
 E_rgb=cat(3, Red_E, Green_E, Blue_E);
 
imshow(A_rgb) % Matriz original
figure,imshow(E_rgb) % Matriz de "errores"
figure,imshow(original) % Matriz "mejorada"