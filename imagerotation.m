I_rot = imrotate(I, 45, 'bilinear', 'crop');

figure;
imshow(I_rot);
title('Rotated Image');
