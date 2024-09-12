      DIMENSION A(5),B(5),C(5),D(5),E(5),F(5)
      DATA A,B,C,D,E,F/5*1.0,5*2.0,5*2.0,5*2.0,5*2.0,5*2.0/
      DO 10 I=1,5
        A(I) = (B(I)+C(I)+D(I)+E(I)+F(I))
     *           / (B(I)*C(I)*D(I)*E(I)*F(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
