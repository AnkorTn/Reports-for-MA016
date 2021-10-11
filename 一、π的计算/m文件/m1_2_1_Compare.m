function Compare(n)
    disp(['When n = ',num2str(n)]);
    %ʹ�ü򵥹�ʽ��������
    easyn = 1;
    while abs(pi - vpa(4*(arctan(1/2,easyn)+arctan(1/3,easyn)),50)) >= 10^(1-n)
        easyn = easyn + 1;
    end
    disp(['The number of steps using the easy formula is:',num2str(easyn)]);
    %ʹ��Machin��ʽ��������
    Machinn = 1;
    while abs(pi - vpa(4*(4*arctan(1/5,Machinn)-arctan(1/239,Machinn)),50)) >= 10^(1-n)
        Machinn = Machinn + 1;
    end
    disp(['The number of steps using the Machin formula is:',num2str(Machinn)]);
    %ʹ�ò��ԵĹ�ʽ��������
    testn = 1;
    while abs(pi - vpa(4*(arctan(1/2,testn)+arctan(1/5,testn)+arctan(1/8,testn)),50)) >= 10^(1-n)
        testn = testn + 1;
    end
    disp(['The number of steps using the test formula is:',num2str(testn)]);