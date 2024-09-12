      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  A,B/400*1.,400*2./,C/400*3./

      DO 10 I=1,20
       DO 10 J=1,20
         A(J,I)=B(J,I)+C(J,I)
  10  CONTINUE

      DO 20 I=1,20
       DO 20 K=1,20
         B(K,I)=A(K,I)*C(K,I)
         C(K,I)=A(K,I)-B(K,I)
  20  CONTINUE

      WRITE(6,*) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((B(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((C(I,J),I=1,10),J=1,10)
      STOP
      END
