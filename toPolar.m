function [polar] = toPolar(complex)
%Converts the complex number to its polar form%
polar = [abs(complex) angle(complex)];
end

