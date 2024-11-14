x=input('Please enter a value for x: ');
x_rad=x*pi/180;
sum=0;
k=1;
while k<50
  initial = (-1)^(k-1);
  numerator = x_rad^(2*(k-1));
        denominator = factorial(2*(k-1));
  total=(initial*numerator)/denominator;
  sum=sum+total;
  k=k+1;
end

fprintf('cos(%d)=%6.6f \n',x,sum);
sums = single(sum)
fprintf('cos(%d)=%6.6f \n',x,sums)