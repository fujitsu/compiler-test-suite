      PROGRAM MAIN
      REAL*8  A(10,10,10),B(10,10,10),C(10,10,10)
      DATA  A,B,C/1000*1.D0,1000*2.D0,1000*3.D0/
      DATA  NN/10/
      CALL  SUB(A,B,C,NN)
      WRITE(6,*) sum(a)
      WRITE(6,*) sum(b)
      WRITE(6,*) sum(c)
      STOP
      END
      SUBROUTINE SUB(A,B,C,NN)
      REAL*8  A(NN,NN,NN),B(NN,NN,NN),C(NN,NN,NN)
      NX=NN-5
      DO 10 K=2,NX
       DO 20 I=1,NN
        DO 20 J=1,NN
         A(I,J,K) = B(I,J,K)+C(I,J,K)
  20   CONTINUE
       DO 30 J=1,NN
        DO 30 I=1,NN
         C(I,J,K) = B(K,I,J) + A(I,J,K)
  30   CONTINUE
       DO 40 J=1,NN
        DO 40 I=1,NN
         B(K,J,I) = A(K,J,I)*C(K,J,I)
  40   CONTINUE
  10  CONTINUE
      RETURN
      END
