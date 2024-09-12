      REAL*4  A(20),B(20),C(20)
      DATA  A,B,C/60*1./,NN/18/
      DO 10 I=2,NN
        A(I)=A(I-1)+B(I)*C(I)
  10  CONTINUE
      DO 20 I=2,NN
        C(I)=C(I)+A(I)*B(I)
  20  CONTINUE
      DO 30 I=2,NN
        A(I)=A(I)+B(I)
  30  CONTINUE
      DO 40 I=2,NN
        B(I)=B(I)+C(I)
  40  CONTINUE
      DO 50 I=2,NN
        C(I)=C(I)+A(I)
  50  CONTINUE
      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
