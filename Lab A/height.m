function g_h = volt(h)
%   height as function of voltage
    
    g_h1 = [0.56 2.18 2.9 3.7 4.5 6.1 6.8 7.6 9.2 9.9];
    h1 = [3 5 6 7 8 10 11 12 14 15];
    
    g = csapi(h1, g_h1);
    
    g_h = fnval(g, h);
end

