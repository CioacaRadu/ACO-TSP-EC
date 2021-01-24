clear all
close all
clc

addpath('PostProcessing')

ACOstruct = aco_user_input();
ACOstruct = graph_generator(ACOstruct)
ACOstruct = aco_initialization(ACOstruct)

tStart = tic;
ACOstruct = aco_run(ACOstruct)
tEnd = toc(tStart);


postprocessing;


