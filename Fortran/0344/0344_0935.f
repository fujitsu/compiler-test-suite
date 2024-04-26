      REAL*4 A(100),B(100),C(100)
      DATA A/100*.0/,B/100*.1/,C/100*.2/,N/0/
    1 N = N + 1
         A(N) = B(N) + C(N)
      IF(N.NE.100) GO TO 1
      WRITE(6,100) A,B,C
  100 FORMAT(15F5.1)
C
      STOP
      END
