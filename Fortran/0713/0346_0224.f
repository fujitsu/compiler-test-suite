      DIMENSION  A(20),B(10),C(10),D(10),E(10),F(10),G(10)
      DATA  A,B,C,D,E,F,G/20*1.0,10*2.0,10*3.0,10*4.0,10*1.0,
     *                    10*2.0,10*3.0/
      DO 10 I=1,10
        B(I) = A(I+1) * F(I)
        C(I) = A(I+2) + F(I)
        D(I) = A(I+3) * G(I)
        E(I) = A(I+4) + G(I)
        A(I) = F(I)   * G(I)
   10 CONTINUE
      WRITE(6,*) A,B,C,D,E
      STOP
      END
