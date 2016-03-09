%% Test Wiki Example 1
groupAvgCoords=[];
groupLabels=[];
groupIsLeft=[];
subs={'PT001','PT002'};
for a=1:length(subs),
    fprintf('Working on Participant %s\n',subs{a});
    [avgCoords, elecNames, isLeft]=pial2AvgBrain(subs{a},[]);
    groupAvgCoords=[groupAvgCoords; avgCoords];
    groupLabels=[groupLabels; elecNames];
    groupIsLeft=[groupIsLeft; isLeft];
end

%% Test Wiki Example 2
cfg=[];
cfg.view='l';
cfg.elecCoord=[groupAvgCoords groupIsLeft];
cfg.elecNames=groupLabels;
cfg.showLabels='n';
cfg.title='PT001-2 on Avg. Brain';
cfgOut=plotPialSurf('fsaverage',cfg);


%% Same as above but on Inflated average brain
cfg=[];
cfg.view='l';
cfg.elecCoord=[groupAvgCoords groupIsLeft];
cfg.elecNames=groupLabels;
cfg.showLabels='n';
cfg.surfType='inflated';
cfg.title='PT001-2 on Avg. Brain';
cfgOut=plotPialSurf('fsaverage',cfg);



%%
disp('Script testAvgBrainMapping.m completed successfully.')