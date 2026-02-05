I = imread('/MATLAB Drive/face.jpg'); % Read your grayscale image
if size(I,3) == 3
    I = rgb2gray(I); % Convert to grayscale if RGB
end
I = im2double(I); % Convert to double

% Step 1: Log-transform
I_log = log(1 + I);

% Step 2: Fourier transform
F = fft2(I_log);

% Step 3: Create high-pass filter
[M,N] = size(I);
[u,v] = meshgrid(1:N,1:M);
D = sqrt((u - N/2).^2 + (v - M/2).^2);

D0 = 30; % cutoff frequency
H = 1 - exp(-(D.^2) / (2*D0^2));
H = fftshift(H); % shift filter to center

% Step 4: Apply filter
G = H .* F;

% Step 5: Inverse Fourier transform
I_out = real(ifft2(G));

% Step 6: Exponential to undo log
I_out = exp(I_out) - 1;

% Step 7: Display results
figure;
subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(I_out, []), title('Homomorphic Filtered');
