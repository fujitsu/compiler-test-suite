      PROGRAM MAIN
      REAL*8  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.D0,8000*2.D0,8000*3.D0/
      DATA  NN/15/

      DO 10 K=2,NN
       DO 20 I=1,20
        DO 20 J=1,20
         A(I,J,K) = B(I,J,K)+C(1,20,NN)
  20   CONTINUE
       DO 30 J=1,20
        DO 30 I=1,20
         C(I,J,K) = B(I,J,20) + A(I,J,K)
  30   CONTINUE
       DO 40 J=1,20
        DO 40 I=1,20
         B(K,J,I) = A(K,J,I)*C(1,1,K)
  40   CONTINUE
  10  CONTINUE

      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((C(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
