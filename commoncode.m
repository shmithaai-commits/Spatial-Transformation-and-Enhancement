clc; clear; close all;

[file, path] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select an Image');

if isequal(file,0)
    disp('No image selected');
    return;
end

I = imread(fullfile(path, file));

if size(I,3)==3
    I = rgb2gray(I);
end

imshow(I);
title('Image Loaded Successfully');
