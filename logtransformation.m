a=imread('peppers.png')
subplot(2,2,1)
imshow(a);
title 'Original Image'
b=im2double(a)
s=(1*log(1+b))*256;% c*log(1+img)
s1=uint8(s);
subplot(2,2,2)
imshow(s1);
title 'c=1'

sp=(5*log(1+b))*256;
s2=uint8(sp);
subplot(2,2,3)
imshow(s2);
title 'c=5'

sp=(8*log(1+b))*256;
s2=uint8(sp);
subplot(2,2,4)
imshow(s2);
title 'c=8'
