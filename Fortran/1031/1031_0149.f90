REAL(8)::A(2,2,2),B(2,2),C(2,2)
DATA C/2,4,6,8/,B/10,12,14,16/
A(:,1,:)=MATMUL(B,C)
if (any(abs((/A(:,1,:)/)-(/76._8,88._8,172._8,200._8/))>1.0E-14_8))then
  PRINT *,A(:,1,:)
  print *,'Error'
else
  print *,'pass'
endif
END
