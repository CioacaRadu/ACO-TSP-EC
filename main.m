clear all
close all
clc



ACOstruct = aco_user_input();
ACOstruct = graph_generator(ACOstruct)
ACOstruct = aco_initialization(ACOstruct)
ACOstruct = aco_run(ACOstruct)


