%diary my_out.out;
%first algorithm
n = 5;
A = randn(n);
disp("This is matrix A :");
disp(A);
b= randn(n,1);
disp("This is vector solution b :");
disp(b);
w = det(A);
syms x [n 1];
c = A;
disp("The first initialization :")
disp(x)
m = zeros(n,1);
for i= 1:n
  c(:,i) = b;
  xs = det(c)/w;
  x = eval(subs(x, x(i), xs));
  m(i) = xs;
  c = A;
  if i~=n
      disp("Then the answer updates :")
      fprintf("%.4f\n", m(1:i)),disp(x(i+1:n));
  end
end
disp("This is final answer :");
disp(x);
%second algorithm
y = A\b;
disp("This is final answer by using inverse of A:");
disp(y);
diary off;