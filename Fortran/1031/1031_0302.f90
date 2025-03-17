 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=1
 A(L:K+KB+2,J+JB:JJ) = MATMUL(B,transpose(A(K+KB+3:KK+3,J+JB:JJ:1)))
 if (any(abs((/A(1:4,2:5)/)-(/&
20786,21984,23182,24380,20854,22056,23258,24460,20922,22128,23334,24540,20990,22200,23410,24620&
/))>0.001))then
print *,'error'
print *,int(A(1:4,2:5))
endif
print *,'pass'
end
