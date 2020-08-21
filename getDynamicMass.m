function [] = getDynamicMass(massMatrix,correctionPlanePos)
% Made By 
%VARAD VAIDYA 
%BT2018MEC060
%VISVESVARAYA MATIONAL INSTITUTE OF TECHNOLOGY
%NAGPUR
noMass = size(massMatrix,1);

% Now our refernce shifts from the origin to the first correction plane
% This can be done by subtracting the location of the fisrt correction
% plane from the origin.

massMatrix(:,4) = massMatrix(:,4) - correctionPlanePos(1,1);
correctionPlanePos(:,1) = correctionPlanePos(:,1) - correctionPlanePos(1,1); 
%The above code prepare the table for the dynamic balancing.

coupleMatrix = zeros(noMass,1);
for i = 1 : noMass
    m_ = massMatrix(i,1) * massMatrix(i,2) * massMatrix(i,4);
    d_ = massMatrix(i,3);
    
    coupleMatrix(i,1) = to_Complex(m_,d_);
end

coupleRes = sum(coupleMatrix);


correctionMatrix = zeros(2,2);
correctionMatrix(2,:) = toPolar(-1*coupleRes);


correctionMatrix(2,1) = correctionMatrix(2,1)/((correctionPlanePos(2,1)*correctionPlanePos(2,2)));
correctionMatrix(2,2) = radToDG(correctionMatrix(2,2));

forceMatrix = zeros(noMass,1);
for i = 1 : noMass
    m_ = massMatrix(i,1) * massMatrix(i,2);
    d_ = massMatrix(i,3);
    
    forceMatrix(i,1) = to_Complex(m_,d_);
end

forceRes = sum(forceMatrix) +to_Complex((correctionMatrix(2,1)*correctionPlanePos(2,2)),(correctionMatrix(2,2)));

correctionMatrix(1,:) = toPolar(-1 * forceRes);
correctionMatrix(1,1) = correctionMatrix(1,1)/correctionPlanePos(1,2);
correctionMatrix(1,2) = radToDG(correctionMatrix(1,2));

if( correctionMatrix(1,2) < 0 )
    correctionMatrix(1,2) = correctionMatrix(1,2) + 360;
end

if ( correctionMatrix(2,2) < 0)
    correctionMatrix(2,2) = correctionMatrix(2,2) + 360;
end


correctionMatrix
end

