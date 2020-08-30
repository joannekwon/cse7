% Name: Joanne Kwon
% This code is called CropTopRightQuadrant.
% This code takes the top right corner of an image.
% (approximately 1/4th of the original image)

image = imread(filename);
funnyimage=image(1:floor(end/2), floor (end/2): end, :);