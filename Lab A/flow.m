function f_u = flow(u)
%   flow of voltage
    
    u1 = [0.5 1 1.5 2 2.5 3 3.5 5 8 10];
    f_u1 = [16.47 20.75 24.52 27.63 30.06 32.49 34.80 40.28 48.24 52.43];


    f = csapi(u1, f_u1);    % cubic spline interpolation
    
    f_u = fnval(f, u);      % evaluatin interpolated function at u
end

