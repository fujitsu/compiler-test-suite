      REAL*4  A(50),B(50),C(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/49/
      DO 10 I=3,NN
        T=A(I)+B(I)
        C(I)=C(I-2)
        A(I)=T+B(I-1)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,600) C
 600  FORMAT(1H ,4(5(E14.7,1X),/))
      STOP
      END
