function [massMatrix,correctionPlanePos] = takeInput()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

p1 = 'Enter the mass matrix data as mentioned in the comments \n';
p2 = 'Enter the correction plane matrix as shown in the comments\n';

massMatrix = input(p1); 
correctionPlanePos = input(p2);

end

