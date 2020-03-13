clear;
A = [0, 	0	,  1.1320	, 	0		, -1.0000	;
	 0,  -0.0538, -0.1712	, 	0		,  0.0705	;
	 0, 	0	, 	0		,  1.0000	, 	0		;
	 0,   0.0485, 	0		, -0.8556	, -1.0130   ;
	 0,  -0.2909, 	0		,  1.0532	, -0.6859	];

B = [	0		, 0		, 	0		;
	   -0.1200	, 1.0000, 	0		;
		0		, 0		, 	0		;
	   4.4190	, 0		, -1.6650	;
	   1.5750	, 0		, -0.0732	];

C =  [  1, 0, 0, 0, 0;
        0, 1, 0, 0, 0;
        0, 0, 1, 0, 0];
    
D = zeros(3);

s = tf('s');
tf_sys = (C*inv(s*eye(5)-A))*B + D;
ss_sys = ss(A, B, C, D);
if rank(ctrb(ss_sys)) ~= 5
    disp('Not Controllable')
end
if rank(obsv(ss_sys)) ~= 5
    disp('Not Observable')
end

%% Disturbances
% k1 = 1;
% k2 = 1;
% k3 = 1;
% tau1 = 1;
% tau2 = 1;
% tau3 = 1;
% xi = 1;
% 
% 
% tau1_c1 = 0.85;
% k2_c = 1;
% tau2_c = 1;
% xi_c = 1.4;
% 
% Gu1 = k1/(tau1*s+1)
% Gu2 = k2/(tau2.^2*s*s + 2*xi*tau2*s + 1)
% Gu3 = k3/(tau3*s+1)
% GU = [Gu1; Gu2; Gu3];
%% RGA - Relative Gain Array
% Calculate G(0) where G is the system TF
s0 = 0;

% Remove the integrating factor cused by u1
G1 = minreal(([s,0,0;0,1,0;0,0,1])*tf_sys)
G0 = evalfr(G1,s0);
RGA = G0.*inv(G0).'

W1 = G0';
W2 = eye(size(G0));
G = tf_sys;

Gtilde = W2*G*W1;
lambda = 10;

Q1 = minreal(1/((lambda*s+1)*(lambda*s+1)) * inv(G(1,1))); % n=2
Q2 = minreal(1/((lambda*s+1)*(lambda*s+1)*(lambda*s+1)) * inv(G(3,2))) %n = 3
Q3 = minreal(1/((lambda*s+1)*(lambda*s+1)) * inv(G(2,3))); % n=2

Gf = (10/s)*G;



