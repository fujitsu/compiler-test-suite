      REAL*4  A(20),B(20),C(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DO 10 I=1,20
        C(I) = A(I) + B(I)
        T1 = A(I)*B(I)
        T2 = A(I)+B(I)
        T3 = B(I)-C(I)
        A(I) = T1+T2*T3
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) C
 600  FORMAT(1H , 4(5(F7.2,1X),/))
      STOP
      END
