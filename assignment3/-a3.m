syms t;
xy1(t)= -11.9084+57.9117*cos(2*pi*t/87.97)*(-149.5832*sin(2*pi*t/365.25));
xy2(t)= -2.4987+149.6041*cos(2*pi*t/365.25)*(56.6741*sin(2*pi*t/87.97));
xM2(t)= (-2.4987+149.6041*cos(2*pi*t/365.25))^2;
yM2(t)= (56.6741*sin(2*pi*t/87.97))^2;
xE2(t)= -2.4987+149.6041*cos(2*pi*t/365.25)^2;
yE2(t)= -149.5832*sin(2*pi*t/365.25)^2;
f(t) = xy1(t)-xy2(t)/sqrt(xM2(t)+yM2(t))* sqrt(xE2(t)+yE2(t));
g(t) = diff(f);
 x1=input('Enter first point of guess interval: ');
 x2=input('Enter second point of guess interval: ');
 n=input('Enter allowed Error in calculation: ');
for i=1:10
   
    root = secant(g,x1,x2,n);
    x1 += 0.1;
    x2 += 0.1;
    disp(root)
end
