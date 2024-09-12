      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/10/

      DO 10 I=NN,1,-1
       DO 20 J=NN+1,20
        A(I,J)= B(J,I)*C(I,J)
  20   CONTINUE

       DO 30 J=20,NN+1,-1
        B(I,J)= A(J,I)+C(I,J)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
