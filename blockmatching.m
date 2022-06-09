clc
clear all
close all
%generate frames
N=8;
frame1=double(rgb2gray(imread('63.jpg')));  % Reference frame360x240
frame2=double(rgb2gray(imread('64.jpg')));  % Input frame

subplot(3,2,1);
imshow(frame1,[]);
title('Reference frame');
subplot(3,2,2);
imshow(frame2,[]);
title('Input frame');

%Divide image into blocks
[m n]=size(frame1);
md=m/N;
nd=n/N;
for i=1:md
    for j=1:nd
        
        block1{i,j}=frame1(N*(i-1)+1:N*(i),N*(j-1)+1:N*(j));
        block2{i,j}=frame2(N*(i-1)+1:N*(i),N*(j-1)+1:N*(j));
    end
end

%motion vector
for i=1:md
    for j=1:nd
        blk=block2{i,j};    % Input frame
        for ii=1:m-(N-1)
            for jj=1:n-(N-1)
                temp=frame1(ii:ii+(N-1),jj:jj+(N-1));
                mse{i,j}(ii,jj)=(sum(sum(abs(temp-blk))).^2)/(m*n);
            end
        end
        
        min1=min(min(mse{i,j}));
        [mvx mvy]=find(mse{i,j}==min1);
        %motion vector
        mv{i,j}=[mvx mvy];
    end
end
%prediction
for i=1:md
    for j=1:nd
        predicted_blk{i,j}=frame1(mv{i,j}(1):mv{i,j}(1)+(N-1),mv{i,j}(2):mv{i,j}(2)+(N-1));% frame1+ motion vector
        predicted_frame(N*(i-1)+1:N*(i),N*(j-1)+1:N*(j))=predicted_blk{i,j};
    end
end
error=(frame2-predicted_frame);%motion
subplot(3,2,3);
imshow(predicted_frame,[]);
title('predicted frame');
subplot(3,2,4);
imshow(abs(error),[]);
title('error between frames');

reconstructed=predicted_frame+error;%frame2-predicted_frame+predicted_frame
subplot(3,2,5);
imshow(reconstructed,[]);
title('reconstructed frame');