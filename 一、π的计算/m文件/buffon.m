function buffon(n)
    d = 1;
    l = rand(1);
    m = 0;
    a = rand(1,n)./2;
    theta = rand(1,n)*pi;
    for i = 1:n
        if a(i) < l/2 * sin(theta(i))
            m = m + 1;
        end
    end
    PI = 2*l*n/d/m
    