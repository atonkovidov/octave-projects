function[a]=EuclideanNorm(n)
a=0;
  for i=1:length(n)
    a=a+n(i)^2;
  end
a=sqrt(a);
endfunction