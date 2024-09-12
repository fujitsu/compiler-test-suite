      PROGRAM MAIN
      INTEGER A(10,10),B(10,10),C(10,10),D(10,10),M(10,10),L(10,10)
      DATA N/100/,A/100*1/,B/100*10/,C/100*100/,M/100*1/,L/100*2/
      DATA D/100*0/
      DO 1  K = 1,N
        J = 1
        DO 10 I = 1,N
          IF( L(I,K).GT.0 ) THEN
            D(J,K) = B(J,K)
            J = J + 1
          ENDIF
          C(I,K) = I
          IF( M(I,K).GT.0 ) GOTO 20
          A(I,K) = B(I,K)
   10   CONTINUE
    1 CONTINUE
      PRINT *,A,B,C,D,M
   20 PRINT *,A,B,C,D,M
      STOP
      END
