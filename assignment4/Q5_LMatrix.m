%
n = 7;
A = randn(n);
b = randn(n,1);
c = tril(A);
disp("lower triangular matrix L:");
disp(c);
disp("The vector of b: ")
disp(b)
x = rec(c,b);
disp("answer of Lx=b: ")
disp(x);
%
function x = rec(A,b)
n = length(b);
x = zeros(n, 1);
if n == 1
    x = b/A;
else
    x(1) = b(1)/A(1,1);
    b(2:n) = b(2:n) - A(2:n,1)*x(1);
    x(2:n) = rec(A(2:n, 2:n),b(2:n));
end
end

