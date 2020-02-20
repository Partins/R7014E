function Amat = jacobianA(hvec)

    a = 0.160;
    A = 33.0;
    g = 982.0;
    h0 = 3.20;
 
    h1 = hvec(1);
    h2 = hvec(2);
    
    df1dh1 = -sqrt(2*g)*a./(2.*A.*sqrt(h1+h0));
    df1dh2 = 0;
    df2dh1 = -df1dh1;
    df2dh2 = -sqrt(2*g)*a./(2.*A.*sqrt(h2+h0));
    
    Amat = [df1dh1, df1dh2; df2dh1, df2dh2]
    
    
end

