I_nn = imresize(I,2,'nearest');
I_bl = imresize(I,2,'bilinear');
I_bc = imresize(I,2,'bicubic');

figure;
subplot(1,3,1), imshow(I_nn), title('Nearest');
subplot(1,3,2), imshow(I_bl), title('Bilinear');
subplot(1,3,3), imshow(I_bc), title('Bicubic');
