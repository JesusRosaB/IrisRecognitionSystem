function [Iris]=findMaxi(Accum,a,b,R)
%%% find the most voted circle, returns center and radius
[M2,I2] = max(Accum(:));
[I_row, I_col, I_rad] = ind2sub(size(Accum),I2);
Iris.Cx=a(I_row);
Iris.Cy=b(I_col);
Iris.R=R(I_rad);
endfunction