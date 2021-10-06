classdef Shapes < handle
    properties
        Length;
        Width;
        Radius;
    end
    
    methods
        function vierkant(shape, space)
                size                        = shape.Length;
                squarefig                   = zeros(size, size);
                squarefig([1,size],:)       = 1;
                squarefig(:,[1,size])       = 1;
                squarefig([1,size],[1,end]) = 2;
                squarefig                   = sparse(squarefig);
                space.Pattern               = squarefig;
        end 
    end
end

