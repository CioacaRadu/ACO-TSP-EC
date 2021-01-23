function [ACOstruct] = aco_initialization(ACOstruct)



    for i = 1:ACOstruct.nr_ants
        
        
       %2.a Choose random departure positions for each ant
       ACOstruct.ants(i).tour  = [randi(ACOstruct.n_cities,1,1)];
       
       %2.c Blocked ants list init (0 = not blocked, 1 = blocked)
       ACOstruct.ants(i).blocked  = 0;
       
       ACOstruct.ants(i).performance  = 0; 
       
    end
    

    


    
    %2.d Apply an amount of pheromones on all the arcs
    ACOstruct.tau = ones(ACOstruct.n_cities,ACOstruct.n_cities) * ACOstruct.trace_pheromone_max*0.01; %pheromone level of the arcs matrix !!!
    
    
    %2.e Init the number of interations
    ACOstruct.k = 0; %current iteration number init
    
    
    ACOstruct.ants_costs = zeros(1,ACOstruct.nr_ants);



end