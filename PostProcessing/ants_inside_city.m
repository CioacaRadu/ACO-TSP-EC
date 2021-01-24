
figure;

city_ants = zeros(1,ACOstruct.n_cities);
for i = 1:ACOstruct.nr_ants
       
    city_ants(ACOstruct.ants(i).tour(end)) = city_ants(ACOstruct.ants(i).tour(end)) + 1;
    
end

stem(city_ants,'LineWidth',1.5);
title('City Ants Population at the end of ACO');
xlabel('city id');
ylabel('number of ants');