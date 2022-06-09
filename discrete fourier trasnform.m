Img1=imread('cameraman.tif');
Img=double(Img1);
figure,imshow(uint8(Img));
title('original image1');
[r, c] = size(Img);
 Output=zeros(r,c);
 SumOutner = 0;
 %%Centralized 2D Discrete Fourier Transform
 [nx,ny]=ndgrid([0:r-1]-(r-1)/2,[0:c-1]-(c-1)/2 );
 
 du=1;
 for u = [0:r-1]-(r-1)/2
     dv=1;
    for v = [0:c-1]-(c-1)/2  
        SumOutner=sum(sum(Img.*exp(-1i*2*pi*(u*nx/r+v*ny/c))));
        Output(du,dv) = SumOutner;
        dv=dv+1;
    end
    du=du+1;
 end
%%Calculate Spectrum and show
mg1=abs(Output);
figure,imshow(uint8(mg1/60))
title('magnitude plot image1')
ph1=angle(Output);
figure,imshow(angle(ph1))
title('phase plot image1')
Img2=imread('pout.tif');
Imgg=double(Img2);
figure,imshow(uint8(Imgg));
title('original image2');
[r, c] = size(Imgg);
 Output=zeros(r,c);
 SumOutner = 0;
 %%Centralized 2D Discrete Fourier Transform
 [nx,ny]=ndgrid([0:r-1]-(r-1)/2,[0:c-1]-(c-1)/2 );
 du=1;
 for u = [0:r-1]-(r-1)/2
     dv=1;
    for v = [0:c-1]-(c-1)/2  
        SumOutner=sum(sum(Imgg.*exp(-1i*2*pi*(u*nx/r+v*ny/c))));
        Output1(du,dv) = SumOutner;
        dv=dv+1;
    end
    du=du+1;
 end
%%Calculate Spectrum and show
mg2=abs(Output1);
figure,imshow(uint8(mg2/60))
title('magnitude plot image2')
ph2=angle(Output1);
figure,imshow(angle(ph2))
title('phase plot image2')