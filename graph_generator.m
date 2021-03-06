function [ACOstruct] = graph_generator(ACOstruct)


n=ACOstruct.n_cities;
D=zeros(n,n);

for i=1:n-1
    for j=i+1:n

        [D(i,j), ~] = lldistkm([ACOstruct.cities(i).lat ACOstruct.cities(i).lon],[ACOstruct.cities(j).lat ACOstruct.cities(j).lon]) ;

        D(j,i)=D(i,j);

    end
end


ACOstruct.D=D; %distance
ACOstruct.C=D; % cost of the arc



%childs map generation
for i=1:ACOstruct.n_cities
    for j=1:ACOstruct.n_cities

        if( D(i,j) ~= 0 && i~=j )
            ACOstruct.childs(i,j) = 1;
        end

    end
end



end