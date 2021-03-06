function g = lfmwhiteKernGradient(kern, t1, varargin)

% LFMWHITEKERNGRADIENT Gradient of LFM-WHITE kernel's parameters.
% FORMAT
% DESC computes the gradient of functions with respect to the
% LFM-White (Single Input Motif - White)
% kernel's parameters. As well as the kernel structure and the
% input positions, the user provides a matrix PARTIAL which gives
% the partial derivatives of the function with respect to the
% relevant elements of the kernel matrix. 
% ARG kern : the kernel structure for which the gradients are being
% computed.
% ARG t1 : the input locations for which the gradients are being
% computed. 
% ARG partial : matrix of partial derivatives of the function of
% interest with respect to the kernel matrix. The argument takes
% the form of a square matrix of dimension  numData, where numData is
% the number of rows in t.
% RETURN g : gradients of the function of interest with respect to
% the kernel parameters. The ordering of the vector should match
% that provided by the function kernExtractParam.
%
% FORMAT
% DESC computes the derivatives as above, but input locations are
% now provided in two matrices associated with rows and columns of
% the kernel matrix. 
% ARG kern : the kernel structure for which the gradients are being
% computed.
% ARG t1 : the input locations associated with the rows of the
% kernel matrix.
% ARG t2 : the input locations associated with the columns of the
% kernel matrix.
% ARG partial : matrix of partial derivatives of the function of
% interest with respect to the kernel matrix. The matrix should
% have the same number of rows as t1 and the same number of columns
% as t2 has rows.
% RETURN g : gradients of the function of interest with respect to
% the kernel parameters.
%
% SEEALSO lfmwhiteKernParamInit, kernGradient, lfmwhiteKernDiagGradient,
% kernGradX, lfmwhiteXlfmwhiteKernGradient
%
% COPYRIGHT : David Luengo, 2009

% GPMAT


if length(varargin)<2
  t2 = t1;
else
  t2 = varargin{1};
end

[g1, g2] = lfmwhiteXlfmwhiteKernGradient(kern, kern, t1, t2, varargin{end});

g = real(g1 + g2);
