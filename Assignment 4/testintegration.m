function[em,et,es]=testintegration()
#Initialization
   a = -3;
   b = 1;
   n = 10000;
   fun = @(x) (1/(1+x.^2))*cos((3/2)*e.^(-x.^2))-(x.^3)/30;
   Iref = 1.6851344770476;
   em = [];
   et = [];
   es = [];
   
#Error vector calculation
   for i=2:n
     em(i) = abs(Iref - midpoint(fun,a,b,i));
     et(i) = abs(Iref - trapezoidal(fun,a,b,i));
     es(i) = abs(Iref - Simpson(fun,a,b,i));
   endfor
   
#Plotting

#Figure 1
   figure(1)
   t = linspace(a,b,n);
   y = [];
   for i=1:n
     y(i) = fun(t(i));
   endfor
   area(t,y,"FaceColor","b");
   
#Figure 2
   figure(2)
   loglog(em,t,";Midpoint;");
   hold on
   loglog(et,t,";Trapezoidal;");
   hold on
   loglog(es,t,";Simpson;");