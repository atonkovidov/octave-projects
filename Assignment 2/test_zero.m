#Initialization
function [zs,zn,es,en,x,f] = test_zero()
  fun = @(x) 16*x.^5 - 20*x.^3 + 5*x;
  dfun = @(x) 80*x.^4 - 60*x.^2 + 5;
  tol = 10^-15;
  Nmax = 20000;
  his = [];
  a = -0.99;
  b = -0.9;

#Call to Newton and Secant functions
  [z0,s_iter,res,zs] = Secantmethod(fun,a,b,tol,Nmax);
  es = [abs(zs - cos(9*pi/10))];
  [z0,n_iter,res,zn] = Newtonmethod(fun,dfun,b,tol,Nmax);
  en = [abs(zn - cos(9*pi/10))];
  
#Plotting

#Figure 1
  x = -1:0.002:1;
  figure(1)
  plot(x,fun(x))

#Figure 2
  figure(2)
  k = 1:1:s_iter;
  semilogy(k,es)
  hold on
  k = 1:1:n_iter;
  semilogy(k,en)

#Figure 3
  i = 2:1:s_iter;
  figure(3)
  ek = [es(i)];
  loglog(es(i-1),ek);
  hold on
  j = 2:1:n_iter;
  ek = [en(j)];
  loglog(en(j-1),ek);