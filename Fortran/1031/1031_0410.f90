REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2),E(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/,E/11,13,15,17/
DATA A(:,:)/22,24,26,28/
D=A(:,:)+MATMUL(B,TRANSPOSE(C))*MATMUL(B,E)
if (any(abs((/D/)-(/&
30390,40824,59002,79580&
/))>1.0E-10_8))then
  PRINT *,int(D)
  print *,'Error'
else
  print *,'pass'
endif
END
