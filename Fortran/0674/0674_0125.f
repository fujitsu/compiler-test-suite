      PROGRAM MAIN
      REAL*4  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B/8000*1.,8000*2./,C/8000*3./,NN/15/

      DO 10 K=2,NN
       DO 10 I=NN,2,-1
        DO 20 J=2,NN
         A(I,J,K) =B(I+1,K+1,J+1)+C(K,J,I)
  20    CONTINUE
        DO 30 J=1,NN
         B(I,J,K) = A(K-1,J,I-1)*C(J,K,I)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
