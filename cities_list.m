function [ACOstruct] = cities_list()


icity = 0;
%%BUCHAREST
icity = icity+1;
cities(icity).name = 'Bucuresti';
cities(icity).lat = 44.4268;
cities(icity).lon = 26.1025;
cities(icity).map_x = 624;
cities(icity).map_y = 559;
%%


%%CONSTANTA
icity = icity+1;
cities(icity).name = 'Constanta';
cities(icity).lat = 44.1598;
cities(icity).lon = 28.6348;
cities(icity).map_x = 862;
cities(icity).map_y = 621;
%%


%%BACAU
icity = icity+1;
cities(icity).name = 'Bacau';
cities(icity).lat = 46.5670;
cities(icity).lon = 26.9146;
cities(icity).map_x = 698;
cities(icity).map_y = 267;
%%


%%Arad
icity = icity+1;
cities(icity).name = 'Arad';
cities(icity).lat = 46.1866;
cities(icity).lon = 21.3123;
cities(icity).map_x = 148;
cities(icity).map_y = 318;
%%


%%Craiova
icity = icity+1;
cities(icity).name = 'Craiova';
cities(icity).lat = 44.3302;
cities(icity).lon = 23.7949;
cities(icity).map_x = 399;
cities(icity).map_y = 592;
%%


%%Ploiest
icity = icity+1;
cities(icity).name = 'Ploiesti';
cities(icity).lat = 44.9367;
cities(icity).lon = 26.0129;
cities(icity).map_x = 611;
cities(icity).map_y = 486;
%%


%%Targoviste
icity = icity+1;
cities(icity).name = 'Targoviste';
cities(icity).lat = 44.9118;
cities(icity).lon = 25.4558;
cities(icity).map_x = 553;
cities(icity).map_y = 506;
%%

%%Giurgiu
icity = icity+1;
cities(icity).name = 'Giurgiu';
cities(icity).lat = 43.9037;
cities(icity).lon = 25.9699;
cities(icity).map_x = 615;
cities(icity).map_y = 627;
%%


%%Brasov
icity = icity+1;
cities(icity).name = 'Brasov';
cities(icity).lat = 45.6427;
cities(icity).lon = 25.5887;
cities(icity).map_x = 536;
cities(icity).map_y = 388;
%%


%%Chisinau
icity = icity+1;
cities(icity).name = 'Chisinau';
cities(icity).lat = 47.0105;
cities(icity).lon = 28.8638;
cities(icity).map_x = 869;
cities(icity).map_y = 176;
%%



ACOstruct.cities = cities;
ACOstruct.n_cities = icity;
end
