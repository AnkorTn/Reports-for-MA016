function tent(a,x0)
    x(1) = x0;
    y(1) = 1;
    % i 的范围可以操控，这里通过数组的方式从2->N，N取1000
    for i = 2:1000
        x(i) = a*(1-2*abs(x(i-1)-1/2));
        y(i) = i;
    end
    plot(y,x,'r.');