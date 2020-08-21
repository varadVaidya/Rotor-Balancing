function [correctionMass] = getCorrectionMass(m_d,n)
%This functions returns the correction mass for the given set of data
n_mass = n;   % finds out the number of masses given

c_mass = zeros(n_mass,1); % creates a zero matrix for the correction mass

 for i = 1:n_mass  %iterates from 1 to n_mass 
     
     m_ = m_d(i,1) * m_d(i,3); %mass is multiplied by the radius
     d_ = m_d(i,2); 
     c_mass(i,1) = to_Complex(m_,d_);%converts the vector to complex form.
 end
 
c_massComplex = sum(c_mass); %find the resultant of the given force vectors


% if abs(c_massComplex <= 1e-10)
%     c_massComplex = 0;           %Stuff needed to get zero as an answer
%     % because of how matlab works
% end


correctionMass = toPolar(-1*c_massComplex); %the the equation to LHS and 
% converts back to polar
correctionMass(2) = radToDG(correctionMass(2));

if correctionMass(2) < 0
    correctionMass(2) = correctionMass(2) + 360; % SInce the range for the 
    % function of angle if from -pi to pi. adding 360 to the negatives to
    % get values from 0 to 360.
end


end

