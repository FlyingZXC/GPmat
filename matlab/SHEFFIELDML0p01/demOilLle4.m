
% DEMOILLLE4 Demonstrate LLE on the oil data.
%
%	Description:
%	

[Y, lbls] = lvmLoadData('oil');

options = lleOptions(32, 2);
model = lleCreate(2, size(Y, 2), Y, options);
model = lleOptimise(model);

lvmScatterPlot(model, lbls);

if exist('printDiagram') & printDiagram
  lvmPrintPlot(model, lbls, 'Oil', 4);
end

errors = lvmNearestNeighbour(model, lbls);
