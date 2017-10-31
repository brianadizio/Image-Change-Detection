% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function z = polySurf(a,x,y)
% This function evaluates any polynomial at two points, x and y.
%   Inputs:
%        a = a polynomial (nx1)
%        x = a point in the domain of p
%        y = a point in the domain of p
%   Output:
%        z = the sum of each term evaluated at x,y

degx=[0, 1,0, 2,1,0, 3,2,1,0]
degy=[0, 0,1, 0,1,2, 0,1,2,3]
% Specifies a third degree polynomial, which works for this project.
% However, it is not generalized and it should be.

z=0;
% Self-made sum

for i=1:length(a)
z = z+a(i)*(x.^degx(i)).*(y.^degy(i));
end