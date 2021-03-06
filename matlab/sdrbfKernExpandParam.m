function kern = sdrbfKernExpandParam(kern, params)

% SDRBFKERNEXPANDPARAM Pass parameters from params to SDRBF kernel
% FORMAT
% DESC returns a switching dynamical RBF kernel structure filled with the
% parameters in the given vector. This is used as a helper function to
% enable parameters to be optimised in, for example, the NETLAB
% optimisation functions.
% ARG kern : the kernel structure in which the parameters are to be
% placed.
% ARG param : vector of parameters which are to be placed in the
% kernel structure.
% RETURN kern : kernel structure with the given parameters in the
% relevant locations.
%
% SEEALSO : sdrbfKernParamInit, sdrbfKernExtractParam, kernExpandParam
%
% COPYRIGHT : Mauricio A. Alvarez, 2010

% GPMAT

kern.inverseWidth = reshape(params(kern.inverseWidthIndx), kern.nlfPerInt, kern.nIntervals);
kern.switchingTimes = params(kern.switchingTimesIndx);
