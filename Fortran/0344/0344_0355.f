      PROGRAM MAIN
      REAL*4 A(100),B(100)
      DATA J/0/,K/50/
      DO 10 I=1,100
         IF(MOD(I,2).EQ.0) THEN
            J = J + 1
            A(J) = J
            B(J) = A(J) * I
         ELSE
            K = K + 1
            A(K) = K
            B(K) = A(K) * I
         ENDIF
   10 CONTINUE
      WRITE(6,100) B
  100 FORMAT(1H ,10F7.1)
      STOP
      END
