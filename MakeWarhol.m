% Name: Joanne Kwon
% The function 'MakeWarhol' uses the 'ExtractLayer' and 'TileImage'
% functions to create and display a tiled image with four variation of the
% image found in filename.
%   The function uses 'ExtractLayer' to produce some different versions of
%   the image and stiches them together with 'TileImage' and displays the
%   results. The top left image is the red version, the top right image is
%   the green version, the bottom left image is the original image and the
%   bottom right image is the blue version. 

function [NewDisplay] = MakeWarhol(filename)

red = filename (:, :, 1);
green = filename (:, :, 2);
blue = filename (:, :, 3);

NewDisplay = uint8(zeros(2*size(filename, 1), 2*size(filename,2),3));

NewDisplay(1:floor(end/2),1:floor(end/2),1) = red;
NewDisplay(1:floor(end/2),floor(end/2)+1:end,2) = green;
NewDisplay(floor(end/2)+1:end,1:floor(end/2),:) = filename;
NewDisplay(floor(end/2)+1:end,floor(end/2)+1:end,3) = blue;
end

