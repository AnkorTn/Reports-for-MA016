function test(n)
    A = zeros(n,n);
    for i = 1:n
        for j = 1:n
            A(i,j) = input('');
        end
    end
    d = mod(det(A),26);
    flag1 = mod(d,2);
    flag2 = mod(d,13);
    if flag1 == 0 || flag2 == 0
        disp('A 不能作为加密矩阵');
    else
        disp('A 能作为加密矩阵');
    end