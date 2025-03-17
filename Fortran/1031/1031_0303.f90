 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=-2
 A(L:K+KB-1,J+JB:JJ) = MATMUL(B,transpose(A(K+KB:KK,J+JB:JJ:1)))
 if (any(abs((/A(-2:1,2:5)/)-(/&
20582,21768,22954,24140,20650,21840,23030,24220,20718,21912,23106,24300,20786,21984,23182,24380&
/))>0.001))then
print *,'error'
print *,int(A(-2:1,2:5))
endif
print *,'pass'
end
