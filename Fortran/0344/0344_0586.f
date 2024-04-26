      REAL*4  A(30),B(30),C(30)
      DATA  A/30*1./,B/30*2./,C/30*3./,NN/29/
      S=1.
      T=1.
      DO 10 I=3,NN
        T1=A(I)+B(I)
        S =S*T1-S
        T2=T1*C(I)
        T=T2*(T-T1)
        A(I)=T
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,*) 'T= ',T
      WRITE(6,600) A
 600  FORMAT(1H ,4(5(E14.7,1X),/))
      STOP
      END
