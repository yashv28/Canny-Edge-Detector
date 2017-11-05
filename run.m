clear
clc

I = imread('./Input/NY.jpg');

O = cannyRGB(I);
imwrite(O,'./Results/o.jpg');