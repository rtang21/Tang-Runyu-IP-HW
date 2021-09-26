cd D:\Runyu\IP\HW1\data
image1 = imread('image1.bmp');
image2 = imread('image2.jpg');
image3 = imread('image3.jpg');
whos % display variables in workspace

max_img1 = max(image1,[],'all') % maximal gray value in image1
min_img1 = min(image1,[],'all') % minimal gray value in image1
max_img2 = max(image2,[],'all')
min_img2 = min(image2,[],'all')
max_img3 = max(image3,[],'all')
min_img3 = min(image3,[],'all')

info1 = dir('image1.bmp');
info2 = dir('image2.jpg');
info3 = dir('image3.jpg');
img1_size = info1.bytes % bytes of image1.bmp
img2_size = info2.bytes % bytes of image2.jpg
img3_size = info3.bytes % bytes of image3.jpg

imwrite(image3,'image3.tiff'); % write image3.jpg into files of type TIFF
imwrite(image3,'image3.bmp'); % write image3.jpg into files of type BMP
imwrite(image3,'image3.png'); % write image3.jpg into files of type PNG
info_img3_tiff = dir('image3.tiff');
info_img3_bmp = dir('image3.bmp');
info_img3_png = dir('image3.png');
img3_tiff_size = info_img3_tiff.bytes % bytes of image3.tiff
img3_bmp_size = info_img3_bmp.bytes % bytes of image3.bmp
img3_png_size = info_img3_png.bytes % bytes of image3.png