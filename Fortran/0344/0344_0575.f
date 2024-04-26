      REAL*4  A(20),B(20),C(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      S=1.
      DO 10 I=1,19
        C(I)=-S
        S=S*B(I)-C(I)
        A(I)=S+A(I+1)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) C
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
