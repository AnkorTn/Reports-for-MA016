function Iteration(a,x0)
    x1 = 0:0.0001:1;
    plot(x1,a*x1.*(1-x1),'k','linewidth',1);
    hold on
    plot(x1,x1,'k','linewidth',1);
    hold on
    x(1) = x0;
    y(1) = 1;
    for i = 2:1000
        x(i) = a*x(i-1)*(1-x(i-1));
        y(i) = i;
        plot([x(i-1),x(i-1)],[x(i-1),x(i)],'r','linewidth',1);
        hold on
        plot([x(i-1),x(i)],[x(i),x(i)],'r','linewidth',1);
        hold on
    end
    