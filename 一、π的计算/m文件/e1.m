function e1(n)
    t = 1+1/n;
    E = t;
    for i = 2:n
        E = E * t;
    end
    vpa(E,50)
    