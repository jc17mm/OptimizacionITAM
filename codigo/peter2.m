
peter = imread('PPSP3.jpg');
peter=im2double(peter);
peter=peter(:,150:500,:);
peter = im2double(peter,'indexed');
red= peter(:, :, 1);
green = peter(:, :, 2);
blue = peter(:, :, 3);

original = cat(3, red, green, blue);
imshow(original);

 [Red_A,Red_E,numIter_r] = pgrpca(red);
 
 [Green_A,Green_E,numIter_g] = pgrpca(green);

 [Blue_A,Blue_E,numIter_b] = pgrpca(blue);
 
 A_rgb=cat(3, Red_A, Green_A, Blue_A);
 E_rgb=cat(3, Red_E, Green_E, Blue_E);
imshow(A_rgb)
figure,imshow(E_rgb)
figure,imshow(original)