function [ACOstruct] = aco_initialization(ACOstruct)


    %2.a Choose random departure positions for each ant
    ACOstruct.ants_start_node = randi(ACOstruct.n_cities,1,ACOstruct.nr_ants);
    ACOstruct.ants_current_node = ACOstruct.ants_start_node;
    
    %2.c Blocked ants list init (0 = not blocked, 1 = blocked)
    ACOstruct.ants_blocked = zeros(1,ACOstruct.nr_ants);
    
    
    %2.d Apply an amount of pheromones on all the arcs
    ACOstruct.P = ones(ACOstruct.n_cities,ACOstruct.n_cities) * ACOstruct.trace_pheromone_max*0.01; %pheromone level of the arcs matrix !!!
    
    
    %2.e Init the number of interations
    ACOstruct.k = 0; %current iteration number init



end