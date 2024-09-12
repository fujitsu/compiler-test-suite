      PROGRAM MAIN
      REAL*4  A(20,40),B(20,40),C(20,40)
      DATA  A,B/800*1.,800*2./,C/800*3./,NN/10/

      DO 10 I=2,NN
        DO 20 J=2,NN,2
         A(I,J) = B(I,5)+C(I,J)
  20    CONTINUE
        DO 30 J=1,NN,2
         B(I,J*2) = A(3,J)*C(I,J)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
