function Rudolf(n)
    a(1) = sqrt(2);
    for i = 2:n
        a(i) = sym((2-(4-a(i-1)^2)^0.5)^0.5);
    end
    PI = 2^(n-1)*a(n-1);
    vpa(PI,10)
    vpa(PI,20)