      DIMENSION  A(30),B(30),C(30),D(30),E(30),F(30)
      DATA  A,B,C,D,E,F/30*1.0,30*2.0,30*3.0,30*4.0,30*5.0,30*6.0/
      DO 10 I=10,20
        A(I) = B(I+1) + B(I+2) + B(I+3)
        B(I) = A(I-1) + A(I-2) + A(I-3) + A(I-4)
        D(I) = C(I+1) + C(I+2)
        C(I) = D(I-1) + D(I-2) + D(I-3)
        E(I) = A(I-5) + A(I-6) + A(I-7) + A(I-8)
        F(I) = E(I-1)
   10 CONTINUE
      WRITE(6,*) A,D
      STOP
      END
