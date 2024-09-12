      DIMENSION  A(10),B(10),C(10),D(10),E(10),F(10),G(10)
      DATA  A,B,C,D/10*1.0,10*2.0,10*3.0,10*4.0/
      DO 10 I=2,10
        A(I) = B(I)   * C(I)
        D(I) = A(I-1) * C(I)
   10 CONTINUE
      WRITE(6,*) A,D
      STOP
      END
