 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=-2
 A(J+JB:JJ, K+KB:KK) = MATMUL(B,transpose(A(J+JB:JJ,L+2:K+KB+1)))
 if (any(abs((/A(2:5,2:5)/)-(/&
17726,18744,19762,20780,17794,18816,19838,20860,17862,18888,19914,20940,17930,18960,19990,21020&
/))>0.001))then
print *,'error'
print *,int(A(2:5,2:5))
endif
print *,'pass'
end
