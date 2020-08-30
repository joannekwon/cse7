function [output] = FindEdges(image, threshold)
% Joanne Kwon
% PID: A15359545
% The function 'FindEdges' takes two arguments and returns a black and
% white image that shows the edges of the input image. The image is the
% same size as the input image but only with one layer.
%   This function takes in the arguments image and threshold. The argument
%   image is a matrix that represents an RGB image in the usual RGB image
%   format. The argument image is a value between 0 and 255 for tuning the
%   sensitivity of out criteria for what counts as an edge.

bw = rgb2gray(image);
blank = zeros(size(bw));
%imshow(blank);
for i = 1:size(image,1)
    for j= 1:size(image,2)        
        if IsEdge(bw, i, j, threshold) == 1
            blank (i,j,1) = 0;
        else
            blank (i,j) = 255;
        end
    end
end
output = blank;
size(blank)
imshow(output);
end
