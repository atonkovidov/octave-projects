#Initialization
function[x,f,P1,P2,P3,P4]=test_Lagrange_interpolation()
   x = linspace(-1,1,1000);
   f = [];

#Loop for f
   for i=1:size(x, 2)
     f(i) = [1/(1+20*x(i).^2)];
   endfor

#Setting up even grid
   xE = @(N,j) -1+2*(j/N);
   
#P1 expression
   xE1 = [];
   yE1 = [];
   N = 8;
   j = [0:N];
   
   for i=1:size(j, 2)
     xE1(i) = xE(N,i-1);
     yE1(i) = [1/(1+20*xE1(i).^2)];
   endfor
   
  [P1] = Lagrange_interp(xE1,yE1,x);

#P2 expression  
  xE2 = [];
  yE2 = [];
  N = 20;
  j = [0:N];
  
  for i=1:size(j, 2)
    xE2(i) = xE(N,i-1);
    yE2(i) = [1/(1+20*xE2(i).^2)];
  endfor
   
  [P2] = Lagrange_interp(xE2,yE2,x);
  
#Setting up uneven grid
  xO = @(N,j) cos(pi/N)*j;
  
#P3 expression
  xO1 = [];
  yO1 = [];
  N = 8;
  j = [0:N];
  
  for i=1:size(j, 2)
    xO1(i) = xO(N,i-1);
    yO1(i) = [1/(1+20*xO1(i).^2)];
  endfor
  
  [P3] = Lagrange_interp(xO1,yO1,x);

#P4 expression
  xO2 = [];
  yO2 = [];
  N = 20;
  j = [0:N];
  
  for i=1:size(j, 2)
    xO2(i) = xO(N,i-1);
    yO2(i) = [1/(1+20*xO2(i).^2)];
  endfor
  
  [P4] = Lagrange_interp(xO2,yO2,x);
  
#Plotting

#Figure 1
  figure(1)
  plot(x, f, "b", x, P1, "r")

#Figure 2
  figure(2)
  plot(x, f, "b", x, P2, "r")
  
#Figure 3
  figure(3)
  plot(x, f, "b", x, P3, "r")
  
#Figure 4
  figure(4)
  plot(x, f, "b", x, P4, "r")