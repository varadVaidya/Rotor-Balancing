clear;
clc
r=10;
t = [ 10 0 10;
      9 60 12.5;
      16 135 5];
  n_mass = size(t,1);
  for i=1:n_mass;
      mr = t(i,1)*t(i,3);
      c = mr* cosd(t(i,2)); 
      d = mr* sind(t(i,2)); end 
  C = sum(c); D= sum(d) ; 
  
  
     O= atan2(D,C);
     O = rad2deg(O)
     correctionmassradius = -1 * (C/cosd(O) ) + -1*(D/sind(O) );
     correctionmass = correctionmassradius/r
 