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
%tf_sys = (C*inv(s*eye(5)-A))*B + D;
ss_sys = ss(A, B, C, D);

% if rank(ctrb(ss_sys)) ~= 5
%     disp('Not Controllable')
% end
% if rank(obsv(ss_sys)) ~= 5
%     disp('Not Observable')
% end

%% Kalman
Vd = .1*eye(size(A));
Vn = 1*eye(3);
[Kf, P, E] = lqe(A, Vd, C, Vd, Vn);
%% LQR
Q = [1 0 0;
     0 1 0;
     0 0 1]
Q = [10 0 0 0 0;
        0 1 0 0 0;
        0 0 10 0 0;
        0 0 0 1 0;
        0 0 0 0 1]

R = 0.01;
L = lqr(A-Kf*C,B,Q,R)
%[P,K,L] = icare(A,B,Q,R)  % X = P,

M =[  1, 0, 0, 0, 0;
        0, 1, 0, 0, 0;
        0, 0, 1, 0, 0];
%Lr = pinv((M*inv((B*L-A)))*B)
Lr = pinv(M*inv(B*L-A)*B)    













