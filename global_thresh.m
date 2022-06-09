x=imread('cameraman.tif');
figure,imshow(x);
title('Original Image');
x=im2double(x);
Id =x;
T = 0.5*(min(min(Id))+max(max(Id))); %min,max of intensity values.
deltaT = 0.001; % convergence criterion
done = false;
while ~done
g = Id >= T;
Tnext = 0.5*(mean(Id(g)) + mean(Id(~g)));
done = abs(T - Tnext) < deltaT;
T = Tnext;
end
d=im2bw(x,T);
figure,imshow(d);
title('Global Thresholding user defined');
 