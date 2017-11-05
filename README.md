Canny Edge Detector
====================

In this project, I have implemented Canny Edge Detector on MATLAB.

Canny edge detector uses the following methods to compute the edges:

- Finding gradients of image in x and y directions and calculating the magnitude and orientation matrices.
- Performing Non-Maximum Suppression to find local maxima in the magnitude of the image by interpolating the magnitude values using orientation values.
- Using Hysteresis Edge Linking to link edges and to remove outliers.

# Results

|  Image | Edges |
| ----------- | ----------- |
| ![](Input/135069.jpg) | ![](Results/135069.jpg) |
| ![](Input/201080.jpg) | ![](Results/201080.jpg) |
| ![](Input/48017.jpg) | ![](Results/48017.jpg) |
| ![](Input/3096.jpg) | ![](Results/3096.jpg) |
| ![](Input/29030.jpg) | ![](Results/29030.jpg) |
| ![](Input/189080.jpg) | ![](Results/189080.jpg) |
| ![](Input/Neil\ Young.jpg) | ![](Results/Neil\ Young.jpg) |
