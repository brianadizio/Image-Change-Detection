% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function a = polySurfCoef(deg,x,y,z)
% Compute coefficients for least-squares polynomial interpolant in two variables
%
% function a=polySurfCoef(deg,x,y,z)
%
% Input: deg   = maximum degree of polynomial
%        x,y,z = arrays of coordinates of points on surface
% Output: a = vector of coefficients of polynomial (see polySurf)

z=z(:);

if deg > 3
    error('We will not use a polynomial greater than degree 3 for this project')
end

XY = [ones(size(x)), x, y, x.^2, x.*y, y.^2, x.^3, x.^2.*y, x.*y.^2, y.^3];

n=((deg+1)*(deg+2))/2;
% Specifies the number of terms

XY = XY(:,1:n);
% Throws away any columns not in use, used only if the polynomial is less
% than degree 3

a=XY\z;
end
    