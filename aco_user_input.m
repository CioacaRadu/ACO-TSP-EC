function [ACOstruct] = aco_user_input()



ACOstruct = cities_list(); %EDIT cities_list.m to update the cities



ACOstruct.nr_ants = 40; %number of ants
ACOstruct.rho = 0.05; %evaporation
ACOstruct.max_iter = 300; %maximum number of iterations
ACOstruct.Q = 1; % Q value from the book

ACOstruct.elite_size = 20;
ACOstruct.max_number_targets = 20;
ACOstruct.initial_pheromone = 20;
ACOstruct.trace_pheromone_min = 20;
ACOstruct.trace_pheromone_max = 20;



end