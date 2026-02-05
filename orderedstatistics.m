noisy = imnoise(I,'salt & pepper',0.08);
median_img = medfilt2(noisy,[3 3]);

figure;
subplot(1,2,1), imshow(noisy), title('Noisy');
subplot(1,2,2), imshow(median_img), title('Median Filter');
