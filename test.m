%%
clc;
clear all;
close all;

[row_rc, driehoekfig] = driehoek(5,6);

function [row_rc, driehoekfig] = driehoek(length,width)
    driehoekfig                 = zeros(length, width);
    driehoekfig(end, :)         = 1;
    driehoekfig(end, [1, end])  = 2;

    
    if mod(width, 2) == 0
        driehoekfig(1, [width/2, width/2 + 1]) = 2;
    else
        driehoekfig(1, ceil(width/2)) = 2;        
    end
    
    for row = 2:(length -1)
        driehoekfig(row,1) = 1;
        row_rc = zeros(1,width);
        for elem = 0:width
            if elem == ceil(width/2)
                row_rc(elem+1) = 0;
            elseif elem < ceil(width/2)
                row_rc(elem+1) = (width/2 - elem)/row
            else
                row_rc(elem+1) = (elem - width/2)/row
            end
        end
        row_rc
    end
    
end