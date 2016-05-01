%video_main.m
%preprocessing
fileName = '';
fileName = input('What''s the file name\n','s');
if isempty(fileName)
    fileName = 'VID.mp4';
end
tic;
video
toc;
disp('The preprocessing is done.');
%reforming
videoaaa
disp('The Video is done');
