function [ACOstruct] = aco_initialization(ACOstruct)



   
    

    


    
    %2.d Apply an amount of pheromones on all the arcs
    ACOstruct.tau = ones(ACOstruct.n_cities,ACOstruct.n_cities) * ACOstruct.trace_pheromone_max*0.01; %pheromone level of the arcs matrix !!!
    
    
    %2.e Init the number of interations
    ACOstruct.k = 0; %current iteration number init
    
    
    ACOstruct.ants_costs = zeros(1,ACOstruct.nr_ants);
    
    ACOstruct.BestCost(1:ACOstruct.max_iter) = inf;



end