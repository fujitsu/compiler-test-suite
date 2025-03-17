REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/
DATA A(:,:)/22,24,26,28/
D=A(:,:)+MATMUL(TRANSPOSE(B),C)
if (any(abs((/D/)-(/90,116,182,240/))>1.0E-14_8))then
  PRINT *,D
  print *,'Error'
else
  print *,'pass'
endif
END
