function[I]=Simpson(fun,a,b,n)
   h = (b-a)/n;
   I = 0;
   x = linspace(a,b,n);
   for i=2:n
     I += (h/6)*(fun(x(i-1))+4*(fun((x(i-1)+x(i))/2))+fun(x(i)));
   endfor