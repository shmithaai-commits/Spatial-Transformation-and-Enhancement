h = fspecial('laplacian',0.2);
sharp = I - imfilter(I,h);

figure;
subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(sharp), title('High Pass Sharpened');
