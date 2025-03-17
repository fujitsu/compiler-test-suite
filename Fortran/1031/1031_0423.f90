REAL(8)::A(2,2,2),B(2,2),C(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/
A(:,1,:)=MATMUL(TRANSPOSE(B),C)
if (any(abs((/A(:,1,:)/)-(/68,92,156,212/))>1.0E-14_8))then
  PRINT *,A(:,1,:)
  print *,'Error'
else
  print *,'pass'
endif
END
