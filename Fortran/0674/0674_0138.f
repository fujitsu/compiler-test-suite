      PROGRAM MAIN
      REAL*8  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.D0,8000*2.D0,8000*3.D0/
      DATA  NN/20/
      CALL  SUB(A,B,C,NN)
      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((C(I,J,K),I=1,10),J=1,10),K=1,10)
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
