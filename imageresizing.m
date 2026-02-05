I_small = imresize(I, 0.5);

figure;
subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(I_small), title('Resized');
