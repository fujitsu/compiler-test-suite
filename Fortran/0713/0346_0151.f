      DIMENSION  A(10),B(10),C(10),D(10),E(10)
      DATA  A,B,C,D,E/10*1.0,10*2.0,10*3.0,10*4.0,10*5.0/
      DATA  N/10/
      DO 10 I=1,N
        A(I) = (SIN(B(I)) + C(I)) + (D(I) + E(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
