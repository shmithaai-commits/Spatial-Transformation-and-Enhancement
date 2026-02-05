noisy = imnoise(I,'gaussian',0,0.01);

figure;
subplot(1,2,1);
imhist(I);
title('Original Histogram');

subplot(1,2,2);
imhist(noisy);
title('Noisy Histogram');
