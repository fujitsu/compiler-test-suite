      PROGRAM MAIN
      REAL*4  A(20,40),B(20,40),C(20,40)
      DATA  A,B/800*1.,800*2./,C/800*3./,NN/15/,N/2/

      DO 10 I=1,NN
        DO 20 J=2,15,N
         A(I+N*2,J+N) = B(I,J+N*1)+C(I,J)
  20    CONTINUE
        DO 30 J=1,10
         B(I,J) = A(I,J*N)*C(I,J)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
