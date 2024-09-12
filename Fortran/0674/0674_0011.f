      PROGRAM MAIN
      INTEGER A(10),B(10),C(10),M(10)
      DATA N/10/,A/10*1/,B/10*10/,C/10*100/,M/10*1/
      J = 1
      DO 10 I = 1,N
        IF( M(I).GT.0 ) GOTO 20
        A(I) = B(I)
        C(I) = I
   10 CONTINUE
      PRINT *,A,B,C,M
   20 PRINT *,A,B,C,M
      STOP
      END
