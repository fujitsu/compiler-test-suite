      PROGRAM MAIN
      REAL*4  A1(20,20),B(20,20),C(20,20)
      REAL*4  A2(20,20),D1(10,10),D2(10,10)
      EQUIVALENCE (A1(1,1),A2(1,1))
      EQUIVALENCE (B(1,1),D1(1,1)),(B(20,20),D2(10,10))
      DATA  A1,B/400*1.,400*2./,C/400*3./,NN/10/

      DO 10 I=1,NN
       DO 20 J=1,NN
        A1(I,J)=C(I,J)-D1(I,J)
        D2(I,J)=C(I,J)+C(I+NN,J+NN)
  20   CONTINUE

       DO 30 J=1,NN
        B(I,J)= A2(I+10,J)+C(I,J)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A1(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      STOP
      END
