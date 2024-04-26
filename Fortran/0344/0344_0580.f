      REAL*4  A(50),B(50),C(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/48/
      S=0.
      DO 10 I=1,NN
        S=S+C(I)
        S=S+B(I)
        A(I)=S
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
