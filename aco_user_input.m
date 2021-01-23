function [ACOstruct] = aco_user_input()

ACOstruct.nr_ants = 10;
ACOstruct.elite_size = 20;
ACOstruct.max_number_targets = 20;
ACOstruct.initial_pheromone = 20;
ACOstruct.trace_pheromone_min = 20;
ACOstruct.trace_pheromone_max = 20;
ACOstruct.max_iter = 10000;


end