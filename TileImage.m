% Name: Joanne Kwon
% The function 'TileImage' takes four arguments (image1, image2, image3, 
% image4) and returns a matrix representing a tiled version of the input 
% images.
%   The arguments are matrices that represents an RGB image in the usual 
%   RGB image format. It can be assumed that all four image matrices will 
%   have the exact same dimensions.

function [NewImage] = TileImage(image1, image2, image3, image4)

rows = size (image1, 1);
columns = size (image1, 2);
layers = size (image1, 3);

NewImage = uint8(zeros(2*rows,2*columns,layers));

NewImage(1:floor(end/2),1:floor(end/2),:) = image1(:,:,:);
NewImage(1:floor(end/2),floor(end/2)+1:end,:) = image2(:,:,:);
NewImage(floor(end/2)+1:end,1:floor(end/2),:) = image3(:,:,:);
NewImage(floor(end/2)+1:end,floor(end/2)+1:end,:) = image4(:,:,:);
end

