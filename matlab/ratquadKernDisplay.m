function ratquadKernDisplay(kern, spacing)

% RATQUADKERNDISPLAY Display parameters of the RATQUAD kernel.
% FORMAT
% DESC displays the parameters of the rational quadratic
% kernel and the kernel type to the console.
% ARG kern : the kernel to display.
%
% FORMAT does the same as above, but indents the display according
% to the amount specified.
% ARG kern : the kernel to display.
% ARG spacing : how many spaces to indent the display of the kernel by.
%
% SEEALSO : ratquadKernParamInit, modelDisplay, kernDisplay
%
% COPYRIGHT : Neil D. Lawrence, 2006

% GPMAT

if nargin > 1
  spacing = repmat(32, 1, spacing);
else
  spacing = [];
end
spacing = char(spacing);
fprintf(spacing);
fprintf('Rational quadratic length scale: %2.4f\n', ...
        kern.lengthScale);
fprintf(spacing);
fprintf('Rational quadratic alpha: %2.4f\n', kern.alpha)
fprintf(spacing);
fprintf('Rational quadratic variance: %2.4f\n', kern.variance)
