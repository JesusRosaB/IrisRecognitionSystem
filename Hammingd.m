function d=Hammingd(u,v)
%%% find the minimum Hamming distance between two templates
%%% where u is shifted to the left and to the right a certain number of times,
%%% for example: for n=1, 2, and three bits to the left/right

j = 1

for i = -3 : 3
  
  u = shift(u,i,2);
  w = xor(u,v);
  d(j) = sum(w(:)) /length(w(:));
  j++;
end

d = min(d);

endfunction