noisy = imnoise(I, 'gaussian', 0, 0.01);
h = fspecial('average', [5 5]);
filtered = imfilter(noisy, h);

figure;
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(noisy), title('Noisy');
subplot(1,3,3), imshow(filtered), title('Linear Filtered');
