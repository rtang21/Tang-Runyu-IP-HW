cd D:\Runyu\IP\HW1\data
image4 = imread('image4.jpg');
%%%%%% Problem a: reduce sample grid size %%%%%%%
image4_rsz1 = imresize(image4,1/2);
image4_rsz2 = imresize(image4,1/4);
image4_rsz3 = imresize(image4,1/8);
figure(1)
subplot(2,2,1); imshow(image4); axis on; title('Original: image4.jpg')
subplot(2,2,2); imshow(image4_rsz1); axis on; title('Sample grid size reduced by 2')
subplot(2,2,3); imshow(image4_rsz2); axis on; title('Sample grid size reduced by 4')
subplot(2,2,4); imshow(image4_rsz3); axis on; title('Sample grid size reduced by 8')

%%%%%% Problem b: change gray levels %%%%%%%
img4_gs1 = grayslice(image4,256);
img4_gs2 = grayslice(image4,128);
img4_gs3 = grayslice(image4,64);
img4_gs4 = grayslice(image4,32);
img4_gs5 = grayslice(image4,16);
img4_gs6 = grayslice(image4,8);
img4_gs7 = grayslice(image4,4);
img4_gs8 = grayslice(image4,2);
figure(2)
subplot(2,2,1); imshow(img4_gs1,[]); axis on; title('256 gray levels')
subplot(2,2,2); imshow(img4_gs2,[]); axis on; title('128 gray levels')
subplot(2,2,3); imshow(img4_gs3,[]); axis on; title('64 gray levels')
subplot(2,2,4); imshow(img4_gs4,[]); axis on; title('32 gray levels')
figure(3)
subplot(2,2,1); imshow(img4_gs5,[]); axis on; title('16 gray levels')
subplot(2,2,2); imshow(img4_gs6,[]); axis on; title('8 gray levels')
subplot(2,2,3); imshow(img4_gs7,[]); axis on; title('4 gray levels')
subplot(2,2,4); imshow(img4_gs8,[]); axis on; title('2 gray levels')
