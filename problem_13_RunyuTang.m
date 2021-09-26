cd D:\Runyu\IP\HW1\data
I = zeros(256, 256);
M = 256;
N = 256;

for m = 1:M
    for n = 1:N
        d = sqrt((m-128)^2 + (n-128)^2); % radius = 15
        if d<=15
            I(m,n) = 1;
        end
    end
end
G = fft2(I); % DFT of the disk

figure(1)
subplot(2,1,1); imshow(I); title('Disk of radius 15')
subplot(2,1,2); imshow(log(1 +fftshift(abs(G))), []); title("Image Spectrum")

i = 0.02*I; % decrease the amplitude to 0.02
g = fft2(i); % image spectrum of amplitude reduced disk
figure(2)
subplot(2,1,1); imshow(i); title('Disk of radius 15, amplitude reduced by 0.02')
subplot(2,1,2); imshow(log(1 +fftshift(abs(g))), []); title("Image Spectrum")

%%%%%% convolution in spatial domain %%%%%%
img = imread('image4.jpg');
h = fspecial('gaussian',512,4);
g = conv2(img,h);
figure(3); imshow(g,[]);
title('Spatial convolved image')
axis on

%%%%%% convolution in frequency domain %%%%%%
F = fft2(img);
H = fft2(h);
G1 = F.*H;
g1 = ifft2(G1);
figure(4); imshow(fftshift(g1),[]);
title('Frequency domain convolved image')
axis on