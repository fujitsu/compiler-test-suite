      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/10/

      DO 10 I=2,NN
       DO 20 J=3,NN+1
         A(J,I)=B(J,I)+C(I,J)
  20   CONTINUE

       DO 30 K=2,NN
         B(K,I)=C(I,K)*A(K+1,I-1)
  30   CONTINUE

       DO 40 L=1,NN-1
         C(I,L)=A(L,I)-B(L,I)
  40   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END
