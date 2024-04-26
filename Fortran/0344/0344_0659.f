      REAL*4  A(20),B(20),C(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      DO 10 I=1,19
        A(I) = B(I) + C(I)
        T1 = B(I) * C(I)
        B(I) = T1 + A(I+1) -C(I)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) B
 600  FORMAT(1H , 4(5(E10.3,1X),/))
      STOP
      END
