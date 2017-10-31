% Copyright (c) 2016 by Brian DiZio <brian.a.dizio@gmail.com>
% Permission is NOT granted for all other uses -- please contact the author for details

function [p] = polyderiv(a)
% This function takes the derivative of a polynomial with
% vector coefficients.  The first term in the input matrix,
% p, is x0, or the initial term of the polynomial.  This
% function will take multiple derivatives.
% Inputs:
%     p = list of polynomial's coefficients (nx1, matrix)
% Outputs:
%     a = list of derivative's coefficients (nx1, matrix)

p=0;
% This accounts for the case when p = [0]

for i=2:numel(a)
    p(i-1)=(a(i)*(i-1));
end

end