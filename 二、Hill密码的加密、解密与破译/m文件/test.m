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
        disp('A ������Ϊ���ܾ���');
    else
        disp('A ����Ϊ���ܾ���');
    end