% This script depends upon the data enterd in the mat file.
% To change the data in the file type the new matrix (as specified below)
%in the command window as a variable m_d.
%Save the matrix as massFile.
% You are then good to go.
% Ifyou are lazy then comment out the code for the matrix m_d and comment
% the code for loading the file... that will do the job too.

% Happy Static Balancing 





% the values of masses and the angles and the radial position of them.
%         mass   angle(in degree)    radial distance
m_d  = [ 200 0 0.2;
          300 45 0.15;
          240 120 0.25;
        260 255 0.3];


%load('massFile')    %loads the massFile which has all the data  
n_mass = size(m_d,1);% Check for the number of masses present
     
correctionMassRadius = 0.3; %Specify the distance at whih the correction 
% mass ha to be placed; User Defined Data;

     
     
correctionMassTimesRadius = getCorrectionMass(m_d,n_mass); % gets the 
% correction mass from the funcion.


correctionMass = correctionMassTimesRadius(1)/correctionMassRadius
correctionAngle = correctionMassTimesRadius(2)
%the two lines above are just to display the code

 

 
     
       
       


