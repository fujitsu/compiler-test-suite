 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 L=-2
 A(L:K+KB-1,J+JB:JJ) = MATMUL(B,transpose(A(K+KB:KK,J+JB:JJJ:2)))
 if (any(abs((/A(-2:1,2:5)/)-(/&
23144,24456,25768,27080,23212,24528,25844,27160,23280,24600,25920,27240,23348,24672,25996,27320&
/))>0.001))then
print *,'error'
print *,int(A(-2:1,2:5))
endif
print *,'pass'
end
