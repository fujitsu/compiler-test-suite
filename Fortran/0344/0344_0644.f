      REAL*4  A(20),B(20),C(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      S=0.
      DO 10 I=1,20
        T1 = S  + A(I)*C(I)
        S  = T1 + B(I)
  10  CONTINUE
      WRITE(6,600) S
 600  FORMAT(1H , F12.3)
      STOP
      END
