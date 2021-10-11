function e2(n)
    fact = 1;
    E = 1;
    for i = 1:n
        fact = fact * i;
        E = E + 1/fact;
    end
    vpa(E,50)
