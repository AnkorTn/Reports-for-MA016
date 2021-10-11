function Logistic5(x0)
    n = 1;
    for a = 2.5:0.001:4.0
        x(n,1) = x0;
        for i = 2:100
            x(n,i) = a*x(n,i-1)*(1-x(n,i-1));
        end
        n = n + 1;
    end
    tmp = 2.5:0.001:4.0;
    plot(tmp, x,'k.','linewidth',0.01);