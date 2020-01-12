function [] = plotpoly()
x = 1.920:0.001:2.080;
%Evaluate using coefficients
y = x.^9 - 18*x.^8 + 144*x.^7 - 672*x.^6 + 2016*x.^5 - 4032*x.^4 + 5376*x.^3 - 4608*x.^2 + 2304*x - 512;
%Plot in figure 1
figure(1)
plot(x,y)
%Evaluate using factorized form
y = (x-2).^9;
%Plot in figure 2
figure(2)
plot(x,y)