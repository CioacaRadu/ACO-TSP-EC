close all
map_display
bestcost_vs_iter
ants_inside_city



%%CONSOLE OUTPUT

txt = sprintf('Number of iterations: %d',ACOstruct.k);
disp(txt)

txt = sprintf('Run time: %f sec',tEnd);
disp(txt)


txt = sprintf('Best route:');
for i = 1:length(ACOstruct.BestTour)
   
    cn = ACOstruct.cities(ACOstruct.BestTour(i)).name;
    txt = [txt ' -> ' cn];
    
end
disp(txt);

txt = sprintf('Best cost:%f',ACOstruct.BestCost(end));
disp(txt);