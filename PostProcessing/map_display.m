figure;
monochromeImage = imread('romap.jpg');
imshow(monochromeImage);
title('Romania Map Best Path ACO')

best_trip = ACOstruct.BestTour;

for i =1:length(best_trip)-1
    
     x1 = ACOstruct.cities(best_trip(i)).map_x;
     x2 = ACOstruct.cities(best_trip(i+1)).map_x;
     y1 = ACOstruct.cities(best_trip(i)).map_y;
     y2 = ACOstruct.cities(best_trip(i+1)).map_y;
    
     line([x1 x2 ],[y1 y2] ,'color','b','LineWidth',3); % Blue line from (4,0) to (4,10)
     
%      txt = sprintf('%d',i);
%      text((x1+x2)/2-10, (y1+y2)/2, txt, 'FontSize', 40, 'color', 'r');
end

