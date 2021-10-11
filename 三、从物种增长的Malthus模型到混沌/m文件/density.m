function density(a,x0)
    x(1) = x0;
    den = zeros(1000);
    %区间长度d
    d = 0.001;
    for i = 2:1000
        x(i) = a*x(i-1)*(1-x(i-1));
        for j = 1:1000
            if abs(x(i)-j*d)<d
                den(j) = den(j) + 1;
                break;
            end
        end
    end
    for i = 1:1000
        plot([i*d,i*d],[0,den(i)],'r','linewidth',1);
        hold on;
    end
    %bar(den);