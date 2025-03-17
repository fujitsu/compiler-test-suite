      DIMENSION  A(10,10),B(10,10),C(10)
      DATA  C,B,N/10*2.0,100*2.0,10/
      EQUIVALENCE (IX1,IX2)
      IX2 = 0
      DO 10 J=1,10
        IX2 = IX2 + 1
        DO 10 I=1,N
          A(IX1,I) = B(I,J) + C(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
