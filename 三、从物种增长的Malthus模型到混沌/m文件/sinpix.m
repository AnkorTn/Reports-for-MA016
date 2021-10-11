function sinpix(x0)
    n = 1;
    for a = 0:0.001:1
        x(n,1) = a*sin(pi*x0);
        for i = 2:100
            x(n,i) = a*sin(pi*x(n,i-1));
        end
        n = n + 1;
    end
    tmp = 0:0.001:1;
    plot(tmp, x,'k.','linewidth',0.01);