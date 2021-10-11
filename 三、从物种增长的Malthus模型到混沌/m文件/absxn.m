function absxn(x0)
    n = 1;
    for a = 0.5:0.001:1
        x(n,1) = a*sin(pi*x0);
        for i = 2:100
            x(n,i) = a*(1-2*abs(x(n,i-1)-1/2));
        end
        n = n + 1;
    end
    tmp = 0.5:0.001:1;
    plot(tmp, x,'k.','linewidth',0.01);