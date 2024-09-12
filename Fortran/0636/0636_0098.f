      PARAMETER (N=100)
      REAL A(N),B(N),C(N)
      DO 10 I=1,N
      A(I)=REAL(I)-0.01
      B(I)=SQRT(ABS(A(I)))
   10 CONTINUE
      WRITE(6,100,ERR=99) A(56),B(79)
   99 DO 20 I=1,N
      C(I)=(A(I)+B(I))/2.0
   20 CONTINUE
      PRINT *,C
  100 FORMAT(1H ,2E15.7)
      STOP
      END
