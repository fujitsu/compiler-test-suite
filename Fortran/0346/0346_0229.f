      DIMENSION  A(10,10),B(10,10),C(10,10),D(10,10)
      DATA  A,B,C,D/100*1.0,100*24.0,100*2.0,100*2.0/
      DO 20 J=1,10
        DO 10 I=1,10
          A(I,J) = (B(I,J) * C(I,J)) / D(I,J)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A
      STOP
      END
