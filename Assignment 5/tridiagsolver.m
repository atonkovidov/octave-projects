function x=tridiagsolver(e,a,c,b)
#Turning e,a,c vectors into banded matrix
   m = size(a,2);
   M = eye(m);
   for i=1:m     
     M(i,i) = M(i,i)*a(i);
     if i == m
       continue;
     endif
     M(i+1,i) = e(i);
     M(i,i+1) = c(i);
   endfor
   
#Modifying the Matrix and the b vector
   N = eye(m);
   f = [];
   for j=1:m
     if j == 1
       N(1,2) = M(1,2)/a(1);
       f(1) = b(1)/a(1);
       continue;
     endif
     if j == m
       f(j) = (b(j)-b(j-1)*e(j-1))/(a(j)-N(j-1,j-1)*e(j-1));
       continue;
     endif
     N(j,j+1) = M(j,j+1)/(a(j)-N(j-1,j-1)*e(j-1));
     f(j) = (b(j)-b(j-1)*e(j-1))/(a(j)-N(j-1,j-1)*e(j-1));
   endfor
   
#Finishing calculations
   x = [];
   for k=m:-1:1
     if k == m
       x(m) = f(m);
       continue;
     endif
     x(k) = f(m)-N(k,k+1);
   endfor
