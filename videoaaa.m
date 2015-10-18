%A
for i=1:H*W
    for j=1:numFrames
        if A(i,j)<0
            A(i,j)=0;
        end
        if A(i,j)>255
            A(i,j)=255;
        end
    end
end
G = ones(H,W,numFrames);
for i=1:numFrames
    temp=floor(A(:,i)+0.5);
    tempG=reshape(temp,H,W);
    G(1:H,1:W,i)=tempG(1:H,1:W);
end

myObj = VideoWriter('A.avi');%初始化一个avi文件
writerObj.FrameRate = 15;
writerObj.Format = 'Grayscale';
open(myObj);
for i=1:32
    frame = G(1:H,1:W,i) ./ 255 ;
    writeVideo(myObj,frame);
end 
close(myObj);

%E
for i=1:H*W
    for j=1:numFrames
        if E(i,j)<0
            E(i,j)=0;
        end
        if E(i,j)>255
            E(i,j)=255;
        end
    end
end
G = ones(H,W,numFrames);
for i=1:numFrames
    temp=floor(E(:,i)+0.5);
    tempG=reshape(temp,H,W);
    G(1:H,1:W,i)=tempG(1:H,1:W);
end

myObj1 = VideoWriter('E.avi');%初始化一个avi文件
writerObj.FrameRate = 15;
writerObj.Format = 'Grayscale';
open(myObj1);
for i=1:32
    frame = G(1:H,1:W,i) ./ 255 ;
    writeVideo(myObj1,frame);
end 
close(myObj1);

