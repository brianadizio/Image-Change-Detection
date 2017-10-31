% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function z=polySurf(a,x,y)
% This function evaluates any polynomial at a point, x.
%   Inputs:
%        p = a polynomial (nx1)
%        x = a point in the domain of p
%        y = a point in the domain of p
%   Output:
%        z = the sum of each term evaluated at x,y


px=0;
py=0;
z=px+py
% Self-made sum

for i=1:numel(a);
     px=px+(a(i))*(x.^(i-1));
     py=py+(a(i))*(y.^(i-1));
end