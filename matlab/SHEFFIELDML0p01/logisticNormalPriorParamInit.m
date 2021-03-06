function prior = logisticNormalPriorParamInit(prior)

% LOGISTICNORMALPRIORPARAMINIT Logistic-normal prior model's parameter initialisation.
%
%	Description:
%
%	PRIOR = LOGISTICNORMALPRIORPARAMINIT(PRIOR) initialises the
%	parameters of the 4 parameter logistic-normal prior with some
%	default parameters.
%	 Returns:
%	  PRIOR - prior structure with initial values in place.
%	 Arguments:
%	  PRIOR - prior structure to be initialised.
%	Reference: Johnson, Systems of Frequency Curves Generated by
%	Methods of Translation, Biometrika 36(1/2):149-176, 1949.
%	
%	
%
%	See also
%	PRIORCREATE


%	Copyright (c) 2011 Antti Honkela


prior.mu = 0;
prior.sd = sqrt(2);
prior.a = 0;
prior.b = 1;

prior.transforms.index = [2];
prior.transforms.type = optimiDefaultConstraint('positive');
prior.nParams = 2;
prior.isBounded = 1;
