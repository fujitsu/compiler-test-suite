      PROGRAM MAIN
      REAL*4  A(20,40),B(20,40),C(20,40)
      DATA  A,B/800*1.,800*2./,C/800*3./,NN/15/,N/2/

      DO 10 I=1,9,2
        DO 20 J=1,NN,2
         A(I*N+1,J) = B(I*N,J*1)+C(I,J)
  20    CONTINUE
        DO 30 J=2,NN,2
         B(I,J) = A(N*I,J)*C(I,J)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
