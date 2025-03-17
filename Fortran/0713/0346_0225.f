      DIMENSION  A(20),B(20),C(20),D(20),E(20),F(20),G(20)
      DATA  A,B,C,D,E,F,G/20*1.0,20*2.0,20*3.0,20*4.0,20*1.0,
     *                    20*2.0,20*3.0/
      DO 10 I=10,20
        A(I) = F(I)   * G(I)
        B(I) = A(I-1) * F(I)
        C(I) = A(I-2) + F(I)
        D(I) = A(I-3) * G(I)
        E(I) = A(I-4) + G(I)
   10 CONTINUE
      WRITE(6,*) A,B,C,D,E
      STOP
      END
