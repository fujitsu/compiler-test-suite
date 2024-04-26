      REAL*4 A(100),B(100),C(100)
      DATA A/100*.0/,B/100*.1/,C/100*.2/,N/0/,M/100/
      DO
         N = N + 1
         IF(N.EQ.M) GO TO 1
         A(N) = B(N) + C(N)
      ENDDO
    1 WRITE(6,100) A,B,C
  100 FORMAT(15F5.1)
C
      STOP
      END
