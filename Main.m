%%
clc
clear all
close all

%Variables
NoAD              = 10;
max_height        = 75;
AoD               = randi([1,NoAD]);
start_locations   = randi([-100,100], [AoD,3]);
target_locations  = [randi([-100,100], [AoD,2]), ones(AoD,1) * max_height];

%Define Shapes
start             = Shapes;
start.Length      = 10;

%Define Space
space             = Space;
space.DroneCount  = AoD;
space.MaxTime     = 300;
space.MaxHeight   = 75;
drone_locs(space);

%Define Drones
for droneName = 1:AoD
    drones(droneName)           =  Drone;
    drones(droneName).Name      =  droneName;
    drones(droneName).Position  =  start_locations(droneName, :);
    drones(droneName).Target    =  target_locations(droneName, :);
    drones(droneName).Distance  = (drones(droneName).Target - drones(droneName).Position);
    space.Locs(droneName,end,:) =  drones(droneName).Target; 
end

vierkant(start,space)