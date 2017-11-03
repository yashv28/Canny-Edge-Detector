clear
clc

I = imread('./Input/48017.jpg');

O = cannyEdge(I);
imwrite(O,'./Results/o.jpg');