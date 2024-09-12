      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/10/,N/1/

      DO 10 I=1,NN
       DO 20 J=1,NN
        A(I,N*J)= B(I,N*J)*C(I,J)
  20   CONTINUE

       DO 30 J=1,NN
        B(I,N*J)= A(I,N*J)+C(I,J)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
