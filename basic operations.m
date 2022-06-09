A=imread('cameraman.tif');
figure,imshow(A)
B=imread('rice.png');
figure,imshow(B)
% AND OPERATION
lr1=bitand(A,B);
figure,imshow(lr1)
title('A and B');
% OR OPERATION
lr4=bitor(A,B);
figure,imshow(lr4)
title('A or B');
% XOR OPERATION
lr7=bitxor(A,B);
figure,imshow(lr7)
title('A exor B');
% NOT OPERATION
lr10= bitcmp(A);
figure,imshow(lr10)
title('Not A');
%ADDITION OPERATION
lr13=imadd(A,B);
figure,imshow(uint8(lr13))
title('A + B');
% SUBSTRACTION OPERATION
lr16=imsubtract(A,B);
figure,imshow(uint8(lr16))
title('A - B');
% MULTIPLICATION OPERATION
lr19=immultiply(A,B);
figure,imshow(uint8(lr19))
title('A * B');
% DIVISION OPERATION
lr22=imdivide(A,B);
figure,imshow(uint8(lr22))
title('A/B');