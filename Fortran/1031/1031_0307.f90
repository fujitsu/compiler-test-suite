 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=-2
 A(J+JB:JJ, K+KB:KK) = MATMUL(B,transpose(A(J+JB:JJ,L:K+KB-1)))
 if (any(abs((/A(2:5,2:5)/)-(/&
14870,15720,16570,17420,14938,15792,16646,17500,15006,15864,16722,17580,15074,15936,16798,17660&
/))>0.001))then
print *,'error'
print *,int(A(2:5,2:5))
endif
print *,'pass'
end
