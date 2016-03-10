function [ output_args ] = mkMaxIntensities( direc )
% Makes Max Intensity Projections for all .tif files in a directory
%   Outputs projections to direc/MaxIntensities


mkdir('MaxIntensity');
imglist = dir(fullfile(direc, '*.tif'));
for ii = 1:length(imglist)
mkMaxIntensity(imglist(ii).name,['MaxIntensity' filesep 'MAX' imglist(ii).name])
disp(['MaxIntensity' filesep 'MAX' imglist(ii).name ' complete']);
 end
disp('All Projections complete');




end

