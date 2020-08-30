% Name: Joanne Kwon
% This code is called FunHouseTall.
% This code decreases an image's width while the height remains the same.
% This makes the image look "tall".

image=imread(filename);
funnyimage=image(:,2:2:end,:);
