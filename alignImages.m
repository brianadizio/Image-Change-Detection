% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

 function im2_reg=alignImages(im1,im2,deg,tiePointsX,tiePointsY)
% Align two images using polynomial surface interpolation
%
% Input: 
%        im1 = first image (won?t move)
%        im2 = second image (will be moved)
%        deg = maximum polynomial degree
%        tiePointsX = number of points in X for assessing displacement
%        tiePointsY = number of points in Y for assessing displacement
% Output: 
%        im2_reg = 

deg = 3;
im1 = imread('Using1_53_18_14-260810.jpg');
im2 = imread('Using2_56_18_14-260810.jpg');

tiePointsX = numel(im1);
tiePointsY = numel(im2);

for  i=1:tiePointsY
   for  j=1:tiePointsX
    [dx(i,j),dy(i,j)]=localShift(im1(1+100*(i-1):100+100*(i-1)),im2(1+100*(i-1):100+100*(i-1)));
    x(i,j)=1+100*(j-1);
    y(i,j)=1+100*(i-1);
   end
end
% Use TiePoints to find changes

ax=polySurfCoef(3,x,y,dx);
ay=polySurfCoef(3,x,y,dy);
[A,B]=meshgrid(1:size(im1,2),1:size(im1,1));
% Create a mesh grid for the original image's coordinate pixels

NewA=A-polysurf(ax,A,B)
NewB=B-polysurf(ay,A,B)
% Find the new coordinates

for i=1:size(A) % This could be size(A) or size(B)
    im1=im1(NewA*(i-1),NewB*(i-1)) % Does this leave the color coordinates?
    % im1=im1((i-1):NewA,(i-1):NewB) % Does this leave the color coordinates?
end
% Resample the image with the new coordinates for the pixels

% Need another loop.  One for all the x's and one for all the y's


figure(1)
imagesc(im1)
% Display the new image



