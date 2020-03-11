clear;
A = [0, 	0	,  1.1320	, 	0		, -1.0000	;
	 0, -0.0538, -0.1712	, 	0		,  0.0705	;
	 0, 	0	, 	0		,  1.0000	, 	0		;
	 0,  0.0485, 	0		, -0.8556	, -1.0130   ;
	 0, -0.2909, 	0		,  1.0532	, -0.6859	];

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
tf_sys = ( C*inv(s*eye(5)-A) )*B + D;
ss_sys = ss(A, B, C, D);
ctrb(ss_sys)
%% RGA - Relative Gain Array
% Because the A-matrix is singular (det(A) = 0) we use the pseudo inverse,
% see Def. 8.1 in book.

RGA = A.*pinv(A)';

