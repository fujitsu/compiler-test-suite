REAL(8)::A(2,2,2),B(2),C(2)
DATA A(1,:,:)/2,4,6,8/,B/10,12/
C=MATMUL(A(1,:,:),B)
if (any(abs(C-(/92._8,136._8/))>1.0E-14_8))then
  PRINT *,C
  print *,'Error'
else
  print *,'pass'
endif
END
