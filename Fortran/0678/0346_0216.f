      DIMENSION  A(10,10),B(10,10),C(10),D(10),E(10,10)
      DATA  A,B,C,D,E/100*1.0,100*2.0,10*2.0,10*2.0,100*2.0/
      DO 10 J=1,10
      DO 10 I=1,10
        A(I,J) = B(I,J) + C(I) + D(I) + E(I,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
