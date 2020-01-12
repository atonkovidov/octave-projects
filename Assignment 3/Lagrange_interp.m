function[y]=Lagrange_interp(x0,y0,x)
#Initialization
   poly = 0;
   
#Main (nested) loop
   for k=1:size(x, 2)
     for i=1:size(x0, 2)
       prod = 1;
       for j=1:size(x0, 2)
         if j == i
           continue;
         endif;
#Expression for Lagrange polynomial generation
         prod *= (x(k)-x0(j))/(x0(i)-x0(j));       
       endfor;
       poly += prod*y0(i);
     endfor;
     y(k) = poly;
   endfor
