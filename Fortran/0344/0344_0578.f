      REAL*4  A(20),B(20),C(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      S=0.
      DO 10 I=3,20
        A(I)=A(I-2)+B(I)
        S=S+B(I)*B(I-1)
        C(I)=A(I)*C(I-1)+B(I)
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
      WRITE(6,600) C
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
