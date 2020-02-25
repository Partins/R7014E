
A = 33;
a = 0.16;
T = 35;
K = 5;
g = 981;

h0 = 3.2;
h10 = 7.2;
h20 = 7;
u0 = 1;

x0 = [h10; h20];
P0 = 1*eye(2);


Amat = [ -(a*sqrt(2*g))/(2*A*sqrt(h10+h0)) 0 ;
                 (a*sqrt(2*g))/(2*A*sqrt(h10+h0)) -(a*sqrt(2*g))/(2*A*sqrt(h20+h0))];
Bmat = [6.22/A; 0];
Cmat = [0 1];
Dmat = zeros(1);


Ts = 1e-1;
SYS = ss(Amat,Bmat,Cmat,Dmat);
DSYS = c2d(SYS,Ts);

Amatd = DSYS.A;
Bmatd = DSYS.B;
Cmatd = DSYS.C;



% P = lyap(Amat, Q); Förmodligen onödig


% [P,K,L] = idare(DSYS.A,DSYS.B,Q)  % X = P,



2


% blockschemat ska baseras på följande för kalmanfilteret
% x_hat_prick = Ax_hat + Bu + K(y - y_hat)
% y = Cx_hat + Du


