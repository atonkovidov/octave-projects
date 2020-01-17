function[I]=trapezoidal(fun,a,b,n)
   h = (b-a)/n;
   I = 0;
   x = linspace(a,b,n);
   for i=2:n
     I += (h/2)*(fun(x(i))+fun(x(i-1)));
   endfor