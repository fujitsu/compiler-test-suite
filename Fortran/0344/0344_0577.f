      REAL*4  A(20),B(20),C(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      S=0.
      T=1.
      DO 10 I=2,19
        S1=S + A(I)
        S =S1* B(I)
        T1=T * C(I)
        T =T1- A(I-1)
        A(I)=T1+A(I+1)
  10  CONTINUE
      WRITE(6,600) A
      WRITE(6,*) 'S= ',S
      WRITE(6,*) 'T= ',T
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
