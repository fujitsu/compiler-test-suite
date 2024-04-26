      REAL*4  A(50),B(50),C(50)
      DATA  A/50*1./,B/50*2./,C/50*3./,NN/48/
      S=0.
      X=0.
      DO 10 I=2,NN
        T1=A(I)+B(I)
        IX=MOD(I,2)
        IF (IX.EQ.0) THEN
          A(I+1)=T1*C(I)
        ELSE
          A(I)=T1+C(I)*2.
        ENDIF
        S1=S +B(I)
        X2=X -C(I)
        S =T1*(-S1)
        X =T1+X2
        B(I)=S
  10  CONTINUE
      WRITE(6,*) 'S= ',S,' X= ',X
      WRITE(6,600) A
      WRITE(6,600) B
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
