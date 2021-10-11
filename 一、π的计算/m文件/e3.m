function e3(n)
    k = 1;
    t = 1 + 1/n + k/(n^2);
    E = t;
    for i = 2:n
        E = E * t;
    end
    vpa(E,50)