function [ACOstruct] = aco_run(ACOstruct)

    blocked_ants = 0;
    while(ACOstruct.k <= ACOstruct.max_iter && blocked_ants < ACOstruct.nr_ants)

        
        for iant = 1:ACOstruct.nr_ants
            
            %3.1.1 Determine the set of childrens bond to node S
            current_node = ACOstruct.ants(iant).tour(end);
            childs = ACOstruct.childs(current_node,:);
            childs(ACOstruct.ants(iant).tour)=0;
            
            %3.1.2 Check if the ant is on a leaf
            if( any(childs) == 0 )
               
                ACOstruct.ants(iant).blocked = 1; %block the ant 
                blocked_ants = blocked_ants+1;
                
            else %if it is not on a leaf
                
                pdens = zeros(size(childs));
                
                for ichild = 1:length(childs) %compute probability density to go to each child from current node
                    
                    if(childs(ichild) == 1)
                        
                        pdens(ichild) = ACOstruct.tau(current_node,ichild)*(1/ACOstruct.D(current_node,ichild))^2;
                    
                    end

                end
                
                

                
                %BGA to select the target
                target_child = BGA(childs,100,pdens);
                ACOstruct.ants(iant).tour = [ACOstruct.ants(iant).tour target_child];
                ACOstruct.ants(iant).performance = ACOstruct.ants(iant).performance + ACOstruct.D(current_node,target_child);
                ACOstruct.tau(current_node,target_child) = ACOstruct.tau(current_node,target_child) + ACOstruct.Q / ACOstruct.ants(iant).performance;
                ACOstruct.tau(target_child,current_node) = ACOstruct.tau(current_node,target_child);
            end
        
        end
        
        ACOstruct.tau=(1-ACOstruct.rho)*ACOstruct.tau;
     
    ACOstruct.k = ACOstruct.k + 1;
    end


end