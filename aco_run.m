function [ACOstruct] = aco_run(ACOstruct)


    while(ACOstruct.k <= ACOstruct.max_iter);

        
        for iant = 1:ACOstruct.nr_ants
            
            %3.1.1 Determine the set of childrens bond to node S
            current_node = ACOstruct.ants_current_node(iant);
            childs = ACOstruct.childs(current_node,:);
            
            %3.1.2 Check if the ant is on a leaf
            if( any(childs) == 0 )
               
                ACOstruct.ants_blocked(iant) = 1; %block the ant 
                
            else %if it is not on a leaf
                
                pdens = zeros(size(childs));
                
                for ichild = 1:length(childs) %compute probability density to go to each child from current node
                    
                    if(childs(ichild) == 1)
                        
                        pdens(ichild) = ACOstruct.P(current_node,ichild)*(1/ACOstruct.D(current_node,ichild))^2;
                    
                    end

                end
                
                %BGA to select the target
                
                    target_child = BGA(childs,100,pdens) 
                    ACOstruct.ants_current_node(iant) = target_child;
                
            end
        
        end


    ACOstruct.k = ACOstruct.k + 1;
    end


end