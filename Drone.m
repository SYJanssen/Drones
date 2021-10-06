classdef Drone < handle
    properties
        Name;
        Direction;
        Distance;
        Position;
        Target;
        
        MaxAcceleration = 1;
        MaxTime         = 300;
        MaxVelocity     = 5;
        Size            = 1;
        Propellors      = 4;
    end
    
    methods
        function movement(drone, space, movement, time)
            space.Locs(drone.Name, time, 1) = space.Locs(drone.Name, time - 1, 1) + movement(1);
            space.Locs(drone.Name, time, 2) = space.Locs(drone.Name, time - 1, 2) + movement(2);
            space.Locs(drone.Name, time, 3) = space.Locs(drone.Name, time - 1, 3) + movement(3);
            update(drone, movement);
        end
            
         function update(drone, movement)
             drone.Position(1) = drone.Position(1) + movement(1);
             drone.Position(2) = drone.Position(2) + movement(2);
             drone.Position(3) = drone.Position(3) + movement(3);           
         end
         
         function [difference] = target_difference(drone)
             difference = [abs(drone.Position(1) - drone.Target(1))
                           abs(drone.Position(2) - drone.Target(2))
                           abs(drone.Position(3) - drone.Target(3))];
         end
         
         function target_reached(drone)
            if abs(drone.Position(1) - drone.Target(1)) | abs(drone.Position(2) - drone.Target(2)) | abs(drone.Position(3) - drone.Target(3)) > .001
                "Not yet there"
            else
                "There"
            end
         end
    end
end    


