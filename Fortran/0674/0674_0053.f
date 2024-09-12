      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./,NN/10/

      DO 10 I=2,NN
       N1 = I+1
       DO 20 J=2,N1
         A(J,I)=B(J,I)+C(I,J)
         B(J,I)=C(I,J+1)*A(J,N1)
  20   CONTINUE

       N2 = I
       DO 30 L=1,N2
         C(I,L)=A(L,N2)-B(L,I)
         A(L,N2)=C(1,L)+B(2,I)
  30   CONTINUE
  10  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END
