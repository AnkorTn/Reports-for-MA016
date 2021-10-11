function random(n)
    S = 0;
    for j = 1:100
        R = rand(2,n);
        m = 0;
        for i = 1:n
            if R(1,i)^2 + R(2,i)^2 <= 1
                m = m + 1;
            end
        end
        S = S + 4*m/n;
    end
    vpa(S/100,50)