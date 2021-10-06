classdef Space < handle    
    properties
        Center = [0 0 0];
        DroneCount;
        DroneTargets;
        MaxDistance;
        MaxHeight; 
        MaxTime;
        Locs;
        Pattern;
    end
    
    methods
        function drone_locs(space)
            space.Locs   = zeros(space.DroneCount, space.MaxTime, 3);
        end
        
        function max_distance(space, drone)
            space.MaxDistance = 295 * drone.MaxVelocity + 1/2 * 5^2  * drone.MaxAcceleration; 
        end
        
        function determine_drone_targets(space)
            
        end
    end
end

