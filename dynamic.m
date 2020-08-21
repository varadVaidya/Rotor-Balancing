% This program does the dynamic balancing of a rotor shaft.
% Made By 
%VARAD VAIDYA 
%BT2018MEC060
%VISVESVARAYA NATIONAL INSTITUTE OF TECHNOLOGY
%NAGPUR
%-----------------------------------------------
%-----------------------------------------------
% Insert the matrix of the masses in the format of
       % mass radialDistance angle diatanceFromTheOrigin  
% massMatrix = [ 9 100 0 0;
%                7 120 60 160;
%                8 140 135 320;
%                6 120 270 560];
%   For the correction Plane Matrix insert the values row wise.
%       i.e. firdt the location of the plane from the origin and the the
%       distance the from the center of the disk where the unbalance has to
%       be placed
%        distanceFromOrigin  radialDistance 
% correctionPlanePos = [80 100;
%                       440 100];

[massMatrix,correctionPlanePos] = takeInput()
                  
getDynamicMass(massMatrix,correctionPlanePos)








           
           