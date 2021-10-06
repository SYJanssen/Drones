classdef Solver
    %SOLVER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        min_distance;
        %space = Space(max_time, drone_count, min_distance);
        %drones = self.init_drones(drone_count, mock=True);
        %ttargets = self.read_target(targets_location, drone_count);

        %targets_count = len(self.targets['targets']);
        %drone_count = drone_count;
        %max_time = max_time;
    end
    
    methods
        function obj = Solver(inputArg1,inputArg2)
            %SOLVER Construct an instance of this class
            %   Detailed explanation goes here
            obj.Property1 = inputArg1 + inputArg2;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

