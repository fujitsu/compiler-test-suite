      PROGRAM MAIN
      REAL*4  A(40,40),B(40,40),C(40,40)
      DATA  A,B/1600*1.,1600*2./,C/1600*3./,NN/15/,N/2/,M1/1/,M2/2/

      DO 10 I=1,NN
        DO 20 J=N,NN,N
         A(I,J+M2) = B(I,J+M1)+C(I,J)
  20    CONTINUE
        DO 30 J=N,NN,N
         B(I,J) = A(I,J+M1)*C(I,J)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
