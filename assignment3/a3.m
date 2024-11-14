function root = secant(f,x1,x2,n)
    iteration=0;
    x(1)=x1;
    x(2)=x2;
    for i=3:1000
        x(i) = x(i-1) - (f(x(i-1)))*((x(i-1) - x(i-2))/(f(x(i-1)) - f(x(i-2))));
        iteration=iteration+1;
        if abs((x(i)-x(i-1))/x(i))*100<n
            root=x(i);
            iteration=iteration;
            break
        end
    end
end