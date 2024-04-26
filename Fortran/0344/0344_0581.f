      REAL*4  A(50),B(50),C(50)
      LOGICAL*4 L(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/48/
      DATA  L/10*.TRUE.,20*.FALSE.,20*.TRUE./
      S=1.
      T1=0.
      T3=1.
      DO 10 I=2,NN
        S=S+A(I)
        B(I)=S
        IF (L(I)) THEN
          T2=T1+B(I)
          T1=T2*C(I)
          A(I)=T1
        ELSE
          T2=T3*B(I)
          T3=T2+C(I)
          A(I)=T3
        ENDIF
        C(I)=C(I)+SQRT(B(I))
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
      WRITE(6,600) B
      WRITE(6,600) C
 600  FORMAT(1H , 4(5(E14.5,1X),/))
      STOP
      END
