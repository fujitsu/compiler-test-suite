      REAL*4  A(50),B(50),C(50)
      LOGICAL*4 L(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/49/
      DATA  L/10*.TRUE.,20*.FALSE.,20*.TRUE./
      S=1.
      N=1
      M=1
      DO 10 I=3,NN
        T1=A(I)+B(I)
        T2=B(I)-A(I)
        IF (L(I)) THEN
          C(N)=T1+T2
          N=N+1
          S=S+A(I-1)*S-B(I-1)
        ELSE
          A(I)=T1+B(M)*T2
          M=M+1
        ENDIF
  10  CONTINUE
      WRITE(6,*) 'S= ',S
      WRITE(6,600) A
      WRITE(6,600) C
 600  FORMAT(1H ,4(5(E14.7,1X),/))
      STOP
      END
