      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/10/

      DO 10 I=2,NN
       DO 20 J=1,NN
         A(J,I)=B(1,I)+C(NN+1,J)
  20   CONTINUE

       DO 30 K=1,NN
         B(K,I)=C(1,K)*A(NN+1,I)
  30   CONTINUE

       DO 40 L=1,NN
         C(I,L)=A(L,I)-B(L+NN,I)
  40   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END
