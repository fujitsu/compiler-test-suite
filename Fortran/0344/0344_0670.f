      REAL*4  A(20),B(20),C(20)
      REAL*4  D(20),E(20),F(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DATA  D/20*3./,E/20*4./,F/20*5./

      DO 10 I=2,18
        T1 = A(I) + B(I+1)
        B(I) = C(I) + F(I)*T1
        T1 =  T1 * B(I+1)
        D(I) = T1 - E(I)
  10  CONTINUE
      WRITE(6,600) B
      WRITE(6,600) D

      DO 20 I=2,18
        T1 = C(I) + A(I-1)
        A(I) = D(I) + F(I)
        C(I) =  T1 * A(I)
        B(I) = T1 - C(I+1)*E(I)
  20  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) B
      WRITE(6,600) C
 600  FORMAT(1H ,5(4(E15.3,1X),/,1X))
      STOP
      END
