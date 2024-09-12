      PROGRAM MAIN
      REAL*8  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.D0,8000*2.D0,8000*3.D0/
      DATA  NN/20/
      CALL  SUB(A,B,C,NN)
      WRITE(6,*) ((A(I,J,I),I=1,20),J=1,20)
      WRITE(6,*) ((B(I,J,I),I=1,20),J=1,20)
      WRITE(6,*) ((C(I,J,I),I=1,20),J=1,20)
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      REAL*8  A(NN,NN,NN),B(NN,NN,NN),C(NN,NN,NN)
      NX=NN-5

      DO 10 I=2,NX
        DO 20 J=3,NX+1
         A(I,J,I) = B(I,J+1,I-1)+C(I+1,I,J+1)
  20    CONTINUE
        DO 30 J=2,NX
         C(I,J,I) = B(I,I,J) + A(I-1,I,J)
  30    CONTINUE
        DO 40 J=1,NX-1
         B(I,J,I) = A(I+1,J,I)*C(I,J,I)
  40    CONTINUE
  10  CONTINUE

      RETURN
      END
