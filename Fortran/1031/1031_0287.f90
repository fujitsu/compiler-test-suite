 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=-2
 A(J+JB:JJ, K+KB:KK) = MATMUL(A(J+JB:JJ,L+2:K+KB+1),B)
 if (any(abs((/A(2:5,2:5)/)-(/&
12830,12880,12930,12980,16902,16968,17034,17100,20974,21056,21138,21220,25046,25144,25242,25340&
/))>0.001))then
print *,'error'
print *,int(A(2:5,2:5))
endif
print *,'pass'
end
