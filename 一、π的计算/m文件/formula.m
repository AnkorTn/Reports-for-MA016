function formula(n)
    S = 1;
    for i = 1:n
        tmp = 4*i^2;
        S = S*tmp/(tmp-1);
    end
    vpa(abs(S*2-pi),50)