function new_decrypt(str)
    %Change1是字母转数字，Change2是数字转字母
    Change1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,0];
    Change2 = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
    prime = [1,0,9,0,21,0,15,0,3,0,19,0,0,0,7,0,23,0,11,0,5,0,17,0,25,0];
    for ii = 0:25
        for jj = 0:25
            A = zeros(2,2);
            A(1,1)=ii;A(2,1)=jj;
            for kk = 0:25
                if mod(ii*11+kk*5,26)==12
                    A(1,2) = kk;
                end
                if mod(jj*11+kk*5,26)==11
                    A(2,2) = kk;
                end
            end
            A
            detA = round(det(A));
            if mod(detA,2)~=0&&mod(detA,13)~=0
                l = length(str{1});
                B = zeros(1,l);
                %然后我们将其转换成数字
                for i = 1:l
                    t = double(str{1}(i))-64;
                    B(1,i) = Change1(t);
                end
    
                d = round(mod(detA,26));
                r1 = prime(d);            
                invA = inv(A);
                An = detA*invA;
                An1 = round(mod(r1*An,26));
    
                Key = zeros(1,l);
                for i = 1:2:l
                    temp1 = B(i:i+1)';
                    temp2 = mod(An1*temp1,26);
                    Key(i:i+1) = temp2';
                end
                %然后转回字母
                Asw = "";
                for i = 1:l
                    if(Key(i)==0)
                        Asw = Asw + Change2(26);
                    else
                        Asw = Asw + Change2(Key(i));
                    end
                end
                %最后输出解密后的字符串
                disp(Asw);
            end
        end
    end