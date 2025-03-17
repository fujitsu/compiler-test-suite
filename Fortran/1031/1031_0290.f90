 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 L=-2
 A(L:K+KB-1,J+JB:JJ) = MATMUL(A(K+KB:KK,J+JB:JJ:1),B)
 if (any(abs((/A(-2:1,2:5)/)-(/&
14930,14980,15030,15080,19674,19740,19806,19872,24418,24500,24582,24664,29162,29260,29358,29456&
/))>0.001))then
print *,'error'
print *,int(A(-2:1,2:5))
endif
print *,'pass'
end
