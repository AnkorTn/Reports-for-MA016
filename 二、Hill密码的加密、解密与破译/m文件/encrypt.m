function encrypt()
    %Change1����ĸת���֣�Change2������ת��ĸ
    Change1 = [5,23,2,20,10,15,8,4,18,25,0,16,13,7,3,1,19,6,12,24,21,17,14,22,11,9];
    Change2 = ['K','P','C','O','H','A','R','N','G','Z','E','Y','S','M','W','F','L','V','I','Q','D','U','X','B','T','J'];
    str=input('','s');
    l = size(str);%l(2)��ʾstr�ĳ��ȣ������ո�
    blank = [];
    tmp = "";
    tot = 1;
    %����ȥ���ո񣬲��Ұѿո������¼����������֮��ԭ��ʱ������
    for i = 1:l(2)
        if str(i)==' '
            blank(tot) = i;
            tot = tot + 1;
        else
            tmp = tmp + str(i);
        end
    end
    blank(tot) = 1000000;
    %Ȼ��͵õ���һ���޿ո��ַ������ҷ�����в���
    l = length(tmp{1});
    A = [8,6,9,5;6,9,5,10;5,8,4,9;10,6,11,4];
    B = zeros(1,l);
    %Ȼ�����ǽ���ת��������
    for i = 1:l
        t = double(tmp{1}(i))-64;
        B(1,i) = Change1(t);
    end
    %Ȼ�����ǳ��Ͼ���A����м���
    Key = zeros(1,l);
    for i = 1:4:l
        temp1 = B(i:i+3)';
        temp2 = mod(A*temp1,26);
        Key(i:i+3) = temp2';
    end
    %Ȼ��ת����ĸ����ʱͬʱ���мӿո�Ĳ���
    Asw = "";
    total = 1;
    x = 1;
    for i = 1:l
        Asw = Asw + Change2(Key(i)+1);
        total = total + 1;
        if(total == blank(x))
            Asw = Asw + ' ';
            total = total+1;
            x = x + 1;
        end
    end
    %���������ܺ���ַ���
    disp(Asw);