function Arctan(n)
    seq(1) = 1;
    for i = 2:n
        seq(i) = seq(i-1) + (-1)^(i-1)/(2*i-1);
    end
    PI = 4 * seq(n)