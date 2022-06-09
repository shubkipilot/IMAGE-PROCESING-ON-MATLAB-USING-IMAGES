% import the video file
obj = VideoReader('SamVid360240.mp4');%Create object to read video files
vid = read(obj);%	Read one or more video frames
  
 % read the total number of frames
frames = obj.NumberOfFrames;
  
% file format of the frames to be saved in
ff ='.jpg';
  
% reading and writing the frames 
for x = 1 : frames
  
    % converting integer to string
    Sx = num2str(x);
  
    % concatenating all strings
    Strc = strcat(Sx, ff);
    Vid = vid(:, :, :, x);
  
    % exporting the frames
    imwrite(Vid, Strc);
end
