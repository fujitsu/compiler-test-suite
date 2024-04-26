      REAL*4  A(20),B(20),C(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      DO 10 I=1,20
        T1 = A(I) + B(I)
        T2 = T1 + T1
        A(I) = T2 + C(I)
  10  CONTINUE
      WRITE(6,600) A
 600  FORMAT(1H , 4(5(F7.2,1X),/))
      STOP
      END
