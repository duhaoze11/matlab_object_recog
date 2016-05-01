%fileName = 'AAA.MP4'; 
obj = VideoReader(fileName);
numFrames = obj.NumberOfFrames;% Ö¡µÄ×ÜÊý
H=obj.Height;
W=obj.Width;
a=zeros(H*W,numFrames);
for i=1:numFrames
    temp=read(obj,i);
    temp=rgb2gray(temp);
    temp=reshape(temp,H*W,1);
    a(:,i)=temp;
end

A = 0;
E = 0;
iter = 0;
tic;
[A E iter] = inexact_alm_rpca(a);
toc;
disp('done');
