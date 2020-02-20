function Ke= fcn(h_hat,e,u)

    A = 33;
    a = 0.16;
    T = 35;
    K = 5;
    g = 981;
    
    h10 = 8;
    h20 = 8;
    u0 = 1.7;
    
%     h1_hat = h_hat(1);
%     h2_hat = h_hat(2);
    
    % function call for flow and heigth as function of voltage
    
    Amat = [ -(a*sqrt(2*g))/(2*A*sqrt(h10)) 0 ;
                 (a*sqrt(2*g))/(2*A*sqrt(h10)) -(a*sqrt(2*g))/(2*A*sqrt(h20))];
             
    Bmat = [  (f_u - f_former)/(u - u_former); 0];
    
    Cmat = [0,1];
    
    Q = eye(2);
    
    [P,K,L] = icare(Amat, Bmat, Q);
    
    
    Ke = K*e;
end
