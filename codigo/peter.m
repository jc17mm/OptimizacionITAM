imdata = imread('PPSP3.jpg');
imdata=im2double(imdata);
imdata = im2double(imdata);
red= imdata(:, :, 1);
green = imdata(:, :, 2);
blue = imdata(:, :, 3);

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
imshow(A_rgb)
figure,imshow(E_rgb)
figure,imshow(original)