      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/15/

      DO 10 I=2,NN
       DO 20 J=1,NN,2
         A(J,I)=B(NN+1,I)+C(2,I)
  20   CONTINUE

       DO 30 K=2,NN,2
         B(K,I)=A(2,I)*C(3,I)
         C(K,I)=A(1,2)-B(K-1,I)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END
