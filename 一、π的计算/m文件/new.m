function new(n)
    S = 0;
    for i = 1:n
        S = S + 1/((2*i-1)^2);
    end
    vpa(abs(pi-sqrt(8*S)),50)