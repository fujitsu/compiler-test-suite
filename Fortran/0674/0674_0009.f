      PROGRAM MAIN
      INTEGER A(10),B(10),C(10),M(10)
      DATA N/10/,A/10*1/,B/10*10/,C/10*100/,M/10*1/
      ICOUNT = 1
      DO 1000 WHILE( ICOUNT .LE. 2 )
        J = 1
        DO 10 I = 1,N
          IF( M(I).GT.0 ) THEN
            A(J) = B(J)
            J = J+1
          ENDIF
          C(I) = I
   10   CONTINUE
        PRINT *,A,B,C,M
 1000 ICOUNT = ICOUNT + 1
      STOP
      END
