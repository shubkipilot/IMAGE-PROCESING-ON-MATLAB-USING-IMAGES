I = imread('eight.tif');
figure, imshow(I)
J = imnoise(I,'salt & pepper',0.02);
K = medfilt2(J);
figure,imshow(J);
figure,imshow(K);