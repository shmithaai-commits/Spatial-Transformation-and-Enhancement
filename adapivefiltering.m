noisy = imnoise(I, 'salt & pepper', 0.05);
filtered = medfilt2(noisy, [5 5]);

figure;
subplot(1,2,1), imshow(noisy), title('Noisy');
subplot(1,2,2), imshow(filtered), title('Adaptive Filtered');
