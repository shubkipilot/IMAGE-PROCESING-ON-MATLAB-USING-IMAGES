a=imread('cameraman.tif')
[r c]=size(a)
for i=1:r
    for j=1:c
        bit0(i,j)=(bitand((2^0) , a(i,j)));
        bit1(i,j)=bitand((2^1) , a(i,j));
        bit2(i,j)=bitand((2^2) , a(i,j));
        bit3(i,j)=bitand((2^3) , a(i,j));
        bit4(i,j)=bitand((2^4) , a(i,j));
        bit5(i,j)=bitand((2^5) , a(i,j));
        bit6(i,j)=bitand((2^6) , a(i,j));
        bit7(i,j)=bitand((2^7) , a(i,j));
        bit0_img(i,j)=logical(bitand((2^0) , a(i,j)));
        bit1_img(i,j)=logical(bitand((2^1) , a(i,j)));
        bit2_img(i,j)=logical(bitand((2^2) , a(i,j)));
        bit3_img(i,j)=logical(bitand((2^3) , a(i,j)));
        bit4_img(i,j)=logical(bitand((2^4) , a(i,j)));
        bit5_img(i,j)=logical(bitand((2^5) , a(i,j)));
        bit6_img(i,j)=logical(bitand((2^6) , a(i,j)));
        bit7_img(i,j)=logical(bitand((2^7) , a(i,j)));

    end
end

figure,
subplot(3,3,1);imshow(a);title('original');
subplot(3,3,2);imshow(bit7);title('Bit7');
subplot(3,3,3);imshow(bit6);title('Bit6');
subplot(3,3,4);imshow(bit5);title('Bit5');
subplot(3,3,5);imshow(bit4);title('Bit4');
subplot(3,3,6);imshow(bit3);title('Bit3');
subplot(3,3,7);imshow(bit2);title('Bit2');
subplot(3,3,8);imshow(bit1);title('Bit1');
subplot(3,3,9);imshow(bit0);title('Bit0');
figure,
subplot(3,3,1); imshow(a);title('original');
subplot(3,3,2);imshow(bit7_img);title('Bit7plane');
subplot(3,3,3);imshow(bit6_img);title('Bit6plane');
subplot(3,3,4);imshow(bit5_img);title('Bit5plane');
subplot(3,3,5);imshow(bit4_img);title('Bit4plane');
subplot(3,3,6);imshow(bit3_img);title('Bit3plane');
subplot(3,3,7);imshow(bit2_img);title('Bit2plane');
subplot(3,3,8);imshow(bit1_img);title('Bit1plane');
subplot(3,3,9);imshow(bit0_img);title('Bit0- image');
