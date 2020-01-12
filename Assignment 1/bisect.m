function [h]=bisect(f,a,b,tol)
  if f(a)*f(b)>0
    printf('The boundary points must be of different values.')
    return;
  elseif f(a)=0
    printf(%a' is the root.',a);
    return;
  elseif f(b)=0
    printf(%b' is the root.',b);
    return;
  endif
  while (abs(f(a))>tol)
    m=(a+b)/2
    if f(m)=0
      printf(%m' is the root.');
      return;
    elseif f(b)*f(m)>0
      a=m;
    else
      b=c
    endif
  endif
endfunction
