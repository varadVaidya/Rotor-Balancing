function [complex] = to_Complex(m,d)
%Converts the polar rep to complex numbers for caluclations.

complex = m * exp(i * dgToRad(d));

end

