      DIMENSION  A(10,10),B(100,10),C(10,100)
      DATA  A/100*1.0/
      Z=0.0
      DO 20 I=1,100
      DO 20 J=1,10
        Z = Z + 1.0
        B(I,J) = Z
        C(J,I) = Z * 2.0
   20 CONTINUE
      DO 10 I=1,10
      DO 10 N=1,10
        IX = N * I
        A(N,I) = B(IX,N) * C(N,IX)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
