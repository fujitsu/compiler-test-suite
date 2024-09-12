      PROGRAM MAIN
      REAL*4  A(10,10,10),B(10,10,10),C(10,10,10)
      DATA  A,B/1000*1.,1000*2./,C/1000*3./,NN/9/

      DO 10 I=2,NN
       DO 10 J=2,NN
        DO 20 K=2,NN
         A(J,J,K) = B(J+1,K-1,J)+C(K,J,J+1)
  20    CONTINUE
        C(I,J,J) = FLOAT(I)
        DO 30 K=1,NN
         B(J,K,J) = A(I,J-1,K)*C(K,J,J+1)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) (((A(I,J,K),I=1,5),J=1,5),K=1,5)
      WRITE(6,*) (((B(I,J,K),I=1,5),J=1,5),K=1,5)
      WRITE(6,*) (((C(I,J,K),I=1,5),J=1,5),K=1,5)
      STOP
      END
