function[I]=midpoint(fun,a,b,n)
   h = (b-a)/n;
   I = 0;
   x = linspace(a,b,n);

#Although linspace is more compact, I've included
#code for n-evenly spaced points without using linspace
#as acomment.   
   
#   x1 = []
#   for i=1:n
#     x1(i) = a + ((b-a)/(n-1))*(i-1)
#   endfor

   for i=2:n
     I += h*fun((x(i-1) + x(i))/2);
   endfor
