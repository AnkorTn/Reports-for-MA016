function Compare(n)
    disp(['When n = ',num2str(n)]);
    %使用简单公式进行运算
    easyn = 1;
    while abs(pi - vpa(4*(arctan(1/2,easyn)+arctan(1/3,easyn)),50)) >= 10^(1-n)
        easyn = easyn + 1;
    end
    disp(['The number of steps using the easy formula is:',num2str(easyn)]);
    %使用Machin公式进行运算
    Machinn = 1;
    while abs(pi - vpa(4*(4*arctan(1/5,Machinn)-arctan(1/239,Machinn)),50)) >= 10^(1-n)
        Machinn = Machinn + 1;
    end
    disp(['The number of steps using the Machin formula is:',num2str(Machinn)]);
    %使用测试的公式进行运算
    testn = 1;
    while abs(pi - vpa(4*(arctan(1/2,testn)+arctan(1/5,testn)+arctan(1/8,testn)),50)) >= 10^(1-n)
        testn = testn + 1;
    end
    disp(['The number of steps using the test formula is:',num2str(testn)]);