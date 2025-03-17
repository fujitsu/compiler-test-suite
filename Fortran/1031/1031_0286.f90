 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=-2
 A(J+JB:JJ, K+KB:KK) = MATMUL(A(J+JB:JJ,L:K+KB-1),B)
 if (any(abs((/A(2:5,2:5)/)-(/&
10730,10780,10830,10880,14130,14196,14262,14328,17530,17612,17694,17776,20930,21028,21126,21224&
/))>0.001))then
print *,'error'
print *,int(A(2:5,2:5))
endif
print *,'pass'
end
