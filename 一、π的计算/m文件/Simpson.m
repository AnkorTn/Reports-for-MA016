function Simpson()
    m = 1;
    S = 0;
    for i = 1:(2*m)
        x(i) = i/(2*m);
        y(i) = 1/(1+x(i)^2);
    end
    for i = 2:2:2*(m-1)
        S = S + 2*y(i);
    end
    for i = 1:2:2*m-1
        S = S + 4*y(i);
    end
    S = S + 1 + 0.5;
    S = 4 * S / (6*m);
    vpa(S,50);
    %若判断的是10的有效位数，则此处的代码为：
    %PI = 3.1415926539999999
    %while abs(PI - S) >= 10^(-9) 
    PI = 3.1415926535897999999;
    while abs(PI - S) >= 10^(-14) 
        m = m + 1;
        S = 0;
        for i = 1:(2*m)
            x(i) = i/(2*m);
            y(i) = 1/(1+x(i)^2);
        end
        for i = 2:2:2*(m-1)
            S = S + 2*y(i);
        end
        for i = 1:2:2*m-1
            S = S + 4*y(i);
        end
        S = S + 1 + 0.5;
        S = 4 * S / (6*m);
    end
    m