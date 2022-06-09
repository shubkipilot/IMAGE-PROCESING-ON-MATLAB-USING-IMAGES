clear all;
close all;
aa =imread('Enhance 1.png');
%f = double(aa);
%ab = imnoise(aa,'gaussian');
a = double(aa);
w = [1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9]
[r c]=size(a);
for x=2:1:r-1
    for y=2:1:c-1
        a1(x,y)=w(1)*a(x-1,y-1)+w(2)*a(x-1,y)+w(3)*a(x-1,y+1)+w(4)*a(x,y-1)+w(5)*a(x,y)+w(6)*a(x,y+1)+w(7)*a(x+1,y-1)+w(8)*a(x+1,y)+w(9)*a(x+1,y+1);
    end
end
figure(1)
imshow(uint8(a))
title('image with gaussian noise')
figure(2)
imshow(uint8(a1))
title('mean filter on image')