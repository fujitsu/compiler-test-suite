      REAL*4  A(50),B(50),C(50)
      LOGICAL*4 L(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/48/
      DATA  L/10*.TRUE.,20*.FALSE.,20*.TRUE./
      S=0.
      X=0.
      DO 10 I=3,NN
        T1=A(I)+B(I)
        T2=A(I)-C(I)
        T3=B(I)*C(I)
        IF (L(I)) THEN
          T1=T1-AMOD(A(I),2.)
          S =S +T1
          T2=S +T2
          S =T2-C(I)
          A(I)=S
        ELSE
          T3=X +T3
          X =T3*C(I)
          A(I)=X
        ENDIF
        B(I)=T1+T2
        C(I)=T2+T3
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
      WRITE(6,600) B
      WRITE(6,600) C
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
