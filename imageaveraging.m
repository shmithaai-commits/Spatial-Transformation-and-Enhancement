h = fspecial('average',[7 7]);
smooth = imfilter(I,h);

figure;
subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(smooth), title('Averaged Image');
