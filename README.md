# ACO-TSP-EC
Ants Colony Optimisation for the Travel Salesman Problem. Final project for Evolutionary Computing course ( Complex Sys Master - Politehnica Bucharest )

#LIST OF M-FILES USED FOR THE ACO TSP PROJECT for the Evolutionary Computing Course
#authors: Radu Cioaca
		  Alexandru Tache
		  
		  
#MAIN.M
	The principal script, it launches all the sub-routines.
	It is the main script that calls the initialization, run and post-process functions
	
#ACO_USER_INPUT.M
	It is a script that allows the USER to set the INPUT DATA
	Parameters like: number of iterations, number of ants, cost function weights, evaporation rate, etc. can be set by the user here
	
#CITIES_LIST.M
	It is a script that allows the USER to add or remove CITIES(graph nodes).
	For each city, the USER should set its lat/lon coords, the name and the position on the Romania Map Picture,
	available in romap.png.
	Please follow the examples already there
	
#ACO_INITIALIZATION.M
	It represents the initalization part for the ACO algorithm for the TSP, as presented in 
	"Optimization in Engineering Sciences" - Dan Stefanoiu, Pierre Borne, 
	Dumitru Popescu, Florin Filip, Abdelkader El Kamel (2014 - WILEY)

#ACO_RUN.M
	It represents the body of the algorithm (where runs for each iteration are performed), as presented in
	"Optimization in Engineering Sciences" - Dan Stefanoiu, Pierre Borne, 
	Dumitru Popescu, Florin Filip, Abdelkader El Kamel (2014 - WILEY)
	
#BGA.M
	It implements the Baker's Generalised Algorithm used in the selection of the destination node by an ant.
	It was implemented as described in the 03_EvCo_PRO_Implementation_pp#1-11.pdf

#lldistkm.M
	Function found on internet that computes the distance between two points on earth mentioned via lat/lon coords.
	Details can be seen in the body of the function

#PostProcessing Folder
	Contains some scripts used to generate the plots presented in the documentation of the project
	
#ACOstruct structure
	Almost all the functions presented use the ACOstruct structure as an input and the output. 
	It is used to facilitate the pass of the variables between functions layers. And to allow an easy postprocessing.
	It is not the best method for implementation due to the memory cost, but its usage reduced the time for the implementation.
	
