REAL(8)::A(2,2),B(2,2),C(2,2),D(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/
DATA A(:,:)/22,24,26,28/
D=A(:,:)+MATMUL(B,C)
if (any(abs((/D/)-(/98._8,112._8,198._8,228._8/))>1.0E-14_8))then
  PRINT *,D
  print *,'Error'
else
  print *,'pass'
endif
END
