 REAL(KIND=8) :: A(-10:10,-10:10)
A=reshape((/(i,i=1,100000)/),(/21,21/))
 J=1; JB=1; JJ=5
 K=1; KB=1; KK=5
 L=1
 A(L:K+KB+2,J+JB:JJ) = MATMUL(transpose(A(K+KB+2:KK+2,J+JB:JJ:1)),transpose(A(K+KB+2:KK+2,J+JB:JJ:1)))
 if (any(abs((/A(1:4,2:5)/)-(/&
320694,345768,370842,395916,321768,346926,372084,397242,322842,348084,373326,398568,323916,349242,374568,399894&
/))>0.001))then
print *,'error'
print *,int(A(1:4,2:5))
endif
print *,'pass'
end
