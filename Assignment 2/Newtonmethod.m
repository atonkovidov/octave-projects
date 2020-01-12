function[z0,iter,res,his]=Newtonmethod(fun,dfun,x0,tol,Nmax)
  his = [];
  his(1) = x0;
  dx = x0;
  i = 1;
  
  if x0==0
    printf('The boundary point must not be zero.\n')
    return;
  elseif fun(x0)==0
    printf( '%d is the root.\n',x0)
    return;
  endif
  
  while (abs(dx) > tol && i < Nmax)
    his(i+1) = his(i)-fun(his(i)) / dfun(his(i));
    i = i + 1;
    dx = his(i) - his(i-1);
  endwhile
  
z0 = his(i);
iter = i;
res = abs(fun(z0));
