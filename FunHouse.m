% Name: Joanne Kwon
% The function FunHouse resizes images.
%   This function takes 3 arguments: image, xfactor, and yfactor. The image
%   is a matrix representing and RGB image. The xfactor is an integer that
%   indicates how much smaller the image should be made along the x-axis.
%   The yfactor is an integer indicating how much smaller the image should
%   be made along the y-axis. Both the xfactor and yfactor must be greater
%   than or equal to 1.

function [imagematrix] = FunHouse(image, xfactor, yfactor)
imagematrix = (image(floor(1/yfactor):1,(1:floor(1/xfactor))));
end