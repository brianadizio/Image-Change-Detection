% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

im1=imread('Using1_53_18_14-260810.jpg');
figure(1)
image(im1)
im2=imread('Using2_56_18_14-260810.jpg');
figure(2)
image(im2)
[dx,dy]=localShift(im1,im2)
shiftsize=[-dy, -dx, 0]

% Using1 is below Using2. In other words, the camera is pointed higher in
% the air in Using1 compared to Using2.

im1=circshift(im1,shiftsize);
figure(3)
image(im1)

% Im1 is changed to look like im2