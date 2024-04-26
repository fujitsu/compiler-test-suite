      REAL*4  A(20),B(20),C(20)
      DATA  A/20*1./,B/20*2./,C/20*3./
      DO 10 I=1,20
        B(I)=FLOAT(I)
  10  CONTINUE
      CALL SUB(A,B,C,20)
      WRITE(6,600) B
      WRITE(6,600) C
 600  FORMAT(1H , 4(5(E14.7,1X),/))
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      REAL*4 A(NN),B(NN),C(NN)
      DO 10 I=3,NN
        S1=A(I)+B(I)
        S2=A(I)*B(I)
        B(I)=B(I-2)*S1+C(I)
        C(I)=C(I-2)+S2
  10  CONTINUE
      RETURN
      END
