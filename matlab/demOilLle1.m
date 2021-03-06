% DEMOILLLE1 Demonstrate LLE on the oil data.

% GPMAT

[Y, lbls] = lvmLoadData('oil');

options = lleOptions(4, 2);
model = lleCreate(2, size(Y, 2), Y, options);
model = lleOptimise(model);

lvmScatterPlot(model, lbls);

if exist('printDiagram') & printDiagram
  lvmPrintPlot(model, lbls, 'Oil', 1);
end

errors = lvmNearestNeighbour(model, lbls);
