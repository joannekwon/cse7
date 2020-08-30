% Name: Joanne Kwon
% The function 'ExtractLayer' returns a matrix representing an image with
% only the requested color layer.
%   The image is a matrix that represents an RGB image in the usual RGB 
%   image format. The Layer is a number taking values 1, 2, or 3 
%   representing the red, green, and blue layers respectively.

function [finalmatrix] = ExtractLayer(image, layer)

red = image(:,:,1);
green = image(:,:,2);
blue = image(:,:,3);

a = zeros(size(image, 1), size(image, 2));

if (layer == 1)
finalmatrix = cat(3, red, a, a);
elseif (layer == 2)
finalmatrix = cat(3, a, green, a);
elseif (layer == 3)
finalmatrix = cat(3, a, a, blue);
end



