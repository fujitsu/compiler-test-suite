      PROGRAM MAIN
      REAL*4  A(40,40),B(40,40),C(40,40)
      DATA  A,B/1600*1.,1600*2./,C/1600*3./,NN/15/,N/2/,M/1/

      DO 10 I=2,NN,N
        DO 20 J=2,NN
         A(I*M+N,J+1) = B(I*M,J*1)+C(I,J)
  20    CONTINUE
        DO 30 J=2,NN
         B(I*M-1,J) = A(M*I+1,J)*C(I,J)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END