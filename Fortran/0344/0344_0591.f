      REAL*4  A(50),B(50),C(50)
      LOGICAL*4 L(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/49/
      DATA  L/10*.TRUE.,20*.FALSE.,20*.TRUE./
      S=1.
      DO 10 I=3,NN
        T=A(I)+B(I)
        C(I)=C(I-2)+C(I)
        A(I)=T+B(I-1)*A(I)
        S=S+S*A(I-1)
        L(I)=A(I).GT.T
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
      WRITE(6,600) C
      WRITE(6,*) L
 600  FORMAT(1H ,4(5(E14.7,1X),/))
      STOP
      END
