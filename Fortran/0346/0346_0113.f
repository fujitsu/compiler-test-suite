      DIMENSION  A(10),B(10),C(10),D(10,10)
      DATA  A,B,C,D/10*1.0,10*1.0,10*1.0,100*1.0/
      DO 10 J=1,10
        DO 20 I=2,10
          D(I,J) = D(I-1,J) + 1.0
   20   CONTINUE
        DO 10 I=1,10
          A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
