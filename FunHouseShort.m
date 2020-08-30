% Name: Joanne Kwon
% This code is called FunHouseShort.
% This code decreases an image's height while the width remains the same.
% This makes the image look "short".

image=imread(filename);
funnyimage=image(2:2:end,:,:);
