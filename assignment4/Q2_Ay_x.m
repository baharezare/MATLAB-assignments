%
n = 3;
x = randn(n,1);
y = randn(n,1);
z = x.' ;
disp("vector of x : ");
disp(x);
disp("vector of x transposed : ");
disp(z);
disp("vector of y : ");
disp(y);
A = x*z ;
disp("matrix of A : ");
disp(A);
w = A*y;
disp("the A multiply by y : ");
disp(w);
s = zeros(n,1);
for i= 1:n
   s(i) = w(i)/x(i);
end
lambda = s(i);
disp("The constant that shows A*y is parallel to x");
disp(lambda);
%