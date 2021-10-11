function trapezium()
    n = 16800;
    x = 0: 1/n :1;
    y = 1 ./ (1 + x.^2);
    S = 2 * sum(y) - 1 - 0.5;
    S = 2 * S / n;
    PI = 3.1415926539999999;
    while abs(PI - S) >= 10^(-9) 
        n = n + 1;
        x = 0: 1/n :1;
        y = 1 ./ (1 + x.^2);
        S = 2 * sum(y) - 1 - 0.5;
        S = 2 * S / n;
    end
    n