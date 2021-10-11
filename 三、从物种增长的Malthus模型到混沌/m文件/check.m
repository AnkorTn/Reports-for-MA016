function check(a,x0)
    x(1) = a*sin(pi*x0);
    y(1) = 1;
    for i = 2:1000
        x(i) = a*sin(pi*x(i-1));
        y(i) = i;
    end
    plot(y,x,'r.');