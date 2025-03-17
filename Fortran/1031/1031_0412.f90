REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2),E(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/,E/11,13,15,17/
DATA A(:,:)/22,24,26,28/
D=A(:,:)+MATMUL(TRANSPOSE(B),C)+E
if (any(abs((/D/)-(/&
101,129,197,257&
/))>1.0E-10_8))then
  PRINT *,D
  print *,'Error'
else
  print *,'pass'
endif
END
