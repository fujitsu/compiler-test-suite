      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/15/,N/2/,M/18/

      DO 10 I=1,NN
       DO 20 J=N,NN
        A(I,J)=A(I,J-1)+2.
  20   CONTINUE

       DO 30 J=N,NN
        B(I,J)= B(I,J+1) + 3.0
  30   CONTINUE
  10  CONTINUE
      WRITE(6,*) A,B

      STOP
      END
