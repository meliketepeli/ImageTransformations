clc 
clear all;

%real image
image=imread('Tepeli.png');
figure
imshow(image);

%converting gray-scale
image2=rgb2gray(image);
figure
imshow(image2);

%75 rotation
image3=imrotate(image2, 75.0, 'bilinear');
figure
imshow(image3);

%1.25 resizing
image4=imresize(image3, 1.25);
figure
imshow(image4);

%histogram equalization
image5=histeq(image4);
figure
imhist(image5);
figure
imshow(image5);
