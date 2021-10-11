function a = arctan(x,n)
    s(1) = x;
    for i = 2:n
        s(i) = s(i-1) + (-1)^(i-1)*(x^(2*i-1))/(2*i-1);
    end
    a = vpa(s(n),52);