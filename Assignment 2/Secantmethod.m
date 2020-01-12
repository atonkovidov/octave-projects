#Initialization
function[z0,iter,res,his]=Secantmethod(fun,a,b,tol,Nmax)
  his = [];
  his(1) = a;
  his(2) = b;
  dx=abs(a-b);
  i = 2;
  
#Various outputs for errors
  if a==b
    printf('The boundary points must not be equal.\n')
    return;
  elseif fun(a)==0
    printf('%d is the root.\n',a)
    return;
  elseif fun(b)==0
    printf('%d is the root.\n',b)
    return;
  elseif fun(a)==fun(b)
    printf('The operation will not converge.')
    return;
  endif
  
#Main function
  while (abs(dx) > tol && i < Nmax)
    his(i+1) = ((his(i-1)*fun(his(i))) - (his(i)*fun(his(i-1))))/(fun(his(i))-fun(his(i-1)));
    i = i + 1;
    dx = his(i) - his(i-1);
  endwhile

#Return Values
z0 = his(i);
iter = i;
res = abs(fun(z0));