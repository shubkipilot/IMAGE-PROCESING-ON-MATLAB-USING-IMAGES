b=imread('peppers.png');
%gamma=1;% gamma value
%c=1;% constant value
a1=5*(b.^1);
subplot(2,2,1)
imshow(b);
title('original image');
subplot(2,2,2)
imshow(a1);
title('gamma=1,c=5');

%gamma=2;% gamma value
%c=5;% constant value
a2=5*(b.^2);
subplot(2,2,3)
imshow(a2);
title('gamma=2,c=5');
