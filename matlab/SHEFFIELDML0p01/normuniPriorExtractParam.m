function [params, names] = normuniPriorExtractParam(prior)

% NORMUNIPRIOREXTRACTPARAM Extract params from normal uniform prior structure.
%
%	Description:
%	[params, names] = normuniPriorExtractParam(prior)
%

params = [prior.sigma prior.width];
if nargout > 1
  names = {'Distribution scale', 'Uniform width'};
end