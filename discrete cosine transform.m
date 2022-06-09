close all;
clear all;
a=imread('cameraman.tif');
ad=double(a);
[r c]=size(ad)
figure(1),imshow(a);
title('original image');
a3=0;
for i=1:r
for j=1:c
a3(i,j)=ad(i,j)-128;
end
end
a4(1:1:r,1:1:c)=a3(1:1:r,1:1:c);
N=8
N1=(N)^(1./2)
for u=0:7
for v=0:7
if u==0
T(u+1,v+1)=1/(N1);
else
T(u+1,v+1)=(1.414/(N1))*cos((((2*v)+1)*u*pi)/(2*N));
end
end
end
for i=1:8:r-7
for j=1:8:c-7
dct1(i:i+7,j:j+7)=T*a3(i:i+7,j:j+7)*T';
end
end
figure(2),imshow(dct1);
title('image after dct');
%for 50%compression matrix
qmtx =[16 11 10 16 24 40 51 61; 12 12 14 19 26 58 60 55; 14 13 16 24 40 57 69 56; 14 17 22 29 51 87 80 62; 18 22 37 56 68 109 103 77; 24 35 55 64 81 104 113 92; 49 64 78 87 103 121 120 101; 72 92 95 98 112 100 103 99];
for i=1:8:r-7
for j=1:8:c-7
qutzo(i:i+7,j:j+7)=(dct1(i:i+7,j:j+7)./qmtx);
end
end
figure(3),imshow(qutzo);
title('image after quantization');

for i=1:8:r-7
for j=1:8:c-7
QUTZO(i:i+7,j:j+7)=(qutzo(i:i+7,j:j+7).*qmtx);
end
end
for i=1:8:r-7
for j=1:8:c-7
dct2(i:i+7,j:j+7)=round(T'*QUTZO(i:i+7,j:j+7)*T);
end
end
figure(4),imshow(dct2);
title('output image');