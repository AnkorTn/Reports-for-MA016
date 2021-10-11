function Hill2()
    alpha = [19,7;7,4];
    beta =  [17,13;7,8];
    detb = mod(det(beta),26)
    inva = det(alpha).*inv(alpha);
    A = mod(beta*inva,26)