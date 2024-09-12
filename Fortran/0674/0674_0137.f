      PROGRAM MAIN
      REAL*8  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.D0,8000*2.D0,8000*3.D0/
      DATA  NN/15/,N1/1/,N2/2/

      DO 10 I=2,NN
        DO 20 J=3,NN+1
         A(I,J,I) = B(I,J+1,I-1)+C(I+N1,I,J+N2)
  20    CONTINUE
        DO 30 J=2,NN
         C(I-N1,J,I) = B(I,J,I+N2) + A(I-1,J,I+N1)
  30    CONTINUE
        DO 40 J=1,NN-1
         B(I,J,I+N1) = A(I+1,J,I+N2)*C(I,J,I+N1)
  40    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J,I),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J,I),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J,I),I=1,10),J=1,10)
      STOP
      END
