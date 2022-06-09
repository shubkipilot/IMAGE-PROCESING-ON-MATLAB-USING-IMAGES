img=imread('cameraman.tif');% input the image
figure;
imshow(img);
img1=double(img);
[x,y]=size(img1);% dimension of image
intensity_level=1:256;%gray scale values
count=0;% use to count every possible value of imageXtoY
% Iterate over grayscale image matrix for 
% every possible intensity value of image and count them
for i=1:256 
    for j=1:x
       for k=1:y
% if image pixel value at location(j, k) is in range (0-255)then increment
% the count.
if img1(j,k)==i-1
count=count+1;
end
end
end
% update ith position of intensity with img(x,y).
intensity_level(i)=count;
count=0;
end
n=0:255;
figure;
stem(n,intensity_level)
xlabel('intensity value');
ylabel('number of pixel');
title('histogram without using function');
title('histogram');

