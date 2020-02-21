A = 33;
a = 0.16;
T = 35;
K = 5;
g = 981;

h10 = 10;
h20 = 10;
u0 = 1.7;
    

u1 = [0.56 2.18 2.9 3.7 4.5 6.1 6.8 7.6 9.2 9.9];
f_u1 = [3 5 6 7 8 10 11 12 14 15];

u2 = [0.5 1 1.5 2 2.5 3 3.5 5 8 10];
g_u2 = [16.47 20.75 24.52 27.63 30.06 32.49 34.80 40.28 48.24 52.43];



Amat = [ -(a*sqrt(2*g))/(2*A*sqrt(h10)) 0 ;
                 (a*sqrt(2*g))/(2*A*sqrt(h10)) -(a*sqrt(2*g))/(2*A*sqrt(h20))];

Bmat = [6.22/A; 0];

Cmat = [0 1];

R = eye(2);
Q = eye(2);
S = 0;




% P = lyap(Amat, Q); Förmodligen onödig


[P,K,L] = icare(Amat,Bmat,Q)  % X = P,




% blockschemat ska baseras på följande för kalmanfilteret
% x_hat_prick = Ax_hat + Bu + K(y - y_hat)
% y = Cx_hat + Du


