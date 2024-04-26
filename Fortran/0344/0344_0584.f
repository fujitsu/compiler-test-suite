      REAL*4  A(50),B(50),C(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/49/
      S=1.
      DO 10 I=2,NN
        T1=C(I)+B(I)
        S =T1*S-S
        A(I)=T1+B(I)
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
 600  FORMAT(1H ,4(5(E14.7,1X),/))
      STOP
      END
