img = imread("cameraman.tif");
%img=double(img);
[r,c]=size(img);
lt=50;
ut=200;
for x=1:1:r
    for y=1:1:c
        if img(x,y)<=lt
            img1(x,y)=0.5*img(x,y);
        else if img(x,y)<=ut
                img1(x,y)=2*(img(x,y)-lt)+0.5*lt;
        else    img1(x,y)=0.5*(img(x,y)-ut)+0.5*lt+2*(ut-lt);          
        end
        end
        
    end
end
subplot(2,1,1)
imshow(uint8(img));
title('original image');
subplot(2,1,2)
imshow(uint8(img1));
title('contrast stretching image');
subplot(2,1,2)