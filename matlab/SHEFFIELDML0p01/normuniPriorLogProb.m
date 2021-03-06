function l = normuniPriorLogProb(prior, x)

% NORMUNIPRIORLOGPROB Log probability of a normal uniform.
%
%	Description:
%	l = normuniPriorLogProb(prior, x)
%

% Compute log prior
u = (x+prior.width/2)/prior.sigma;
uprime = u - prior.width/prior.sigma;
l = sum(- log(prior.width) + lnDiffCumGaussian(u, uprime));


