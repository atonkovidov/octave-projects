function[L,U]=lugauss(A)
#Initialization
   a = columns(A);
   L = eye(a);
   U = zeros(a);
   U(1,1:end) = A(1,1:end);
   
#Triangular matrices creation
   for i=1:a-1
     for j=i+1:a
       if i==j
         continue;
       endif
       b = A(j,i)/A(i,i);
       A(j,i:end) = A(j,i:end) - b*(A(i,i:end));
       U(j,i:end) = A(j,i:end);
       L(j,i) = abs(L(j,i) - b);
     endfor
   endfor