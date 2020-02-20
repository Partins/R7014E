function SYS = ss_hackl(A,B,C,D)
SYS = ss(A,B,C,D);
coder.extrinsic('patch'); 
end

