rgb = imread('coloredChips.png');
figure
imshow(rgb)

d = imdistline;

delete(d);

gray_image = rgb2gray(rgb);
imshow(gray_image);

[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark')

[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.9)

imshow(rgb);

h = viscircles(centers,radii);

[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.92);

length(centers)

delete(h);  % Delete previously drawn circles
h = viscircles(centers,radii);

[centers, radii] = imfindcircles(rgb,[20 25], 'ObjectPolarity','dark', ...
          'Sensitivity',0.92,'Method','twostage');

delete(h);

h = viscircles(centers,radii);

[centers, radii] = imfindcircles(rgb,[20 25], 'ObjectPolarity','dark', ...
          'Sensitivity',0.95,'Method','twostage');

delete(h);

viscircles(centers,radii);

imshow(gray_image);

[centersBright, radiiBright] = imfindcircles(rgb,[20 25],'ObjectPolarity', 'bright','Sensitivity',0.92);
imshow(rgb);

hBright = viscircles(centersBright, radiiBright,'Color','b');

[centersBright, radiiBright, metricBright] = imfindcircles(rgb,[20 25],'ObjectPolarity','bright','Sensitivity',0.92,'EdgeThreshold',0.1);

delete(hBright);

hBright = viscircles(centersBright, radiiBright,'Color','b');

h = viscircles(centers,radii);
