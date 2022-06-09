img=imread('tire.tif');% input image
r=size(img,1);% store row values
c=size(img,2);% store column values
ah=uint8(zeros(r,c));% final values of image store
n=r*c; % total number of pixels
intensity=zeros(256,1);% frequency beacuse of 256 intensity values
pdf=zeros(256,1);% pdf of image
cdf=zeros(256,1);% cdf of image
cum=zeros(256,1);% to store intermediate results 
out=zeros(256,1);
% iterate between rows and columns
for i=1:r
    for j=1:c
        value=img(i,j); % intensity value of perticular pixel ( value can be 0 but for indexing we take it as 1)
        intensity(value+1)=intensity(value+1)+1;%indexing from arrays of rows,columns starts from 1,as that intensity values start from 0.
        pdf(value+1)=intensity(value+1)/n;% value is zeroth value# and added to previous value
    end
end

sum=0; L=255;%it is l-1
for i=1:size(pdf)% done seperately from starting
    sum =sum + intensity(i);% for cumulation of cdf 
    cum(i)= sum;
    cdf(i)=cum(i)/n;
    out(i)=round(cdf(i)*L);
end
% for all i to j store in ah.
for i=1:r
    for j=1:c
        ah(i,j)=out(img(i,j)+1);
    end
end
subplot(2,2,1);
imshow(img);
title('original image');
subplot(2,2,2);
imshow(ah);
title('enhanced image');
subplot(2,2,3);
bar(img);
title('original');
xlabel('intensity levels');
ylabel('number of pixels');
subplot(2,2,4)
bar(ah);
title('equalized');
xlabel('intensity levels');
ylabel('number of pixels');

b=histeq(img);
figure,bar(b);