      PROGRAM MAIN
      REAL*4  A(10,10,10),B(10,10,10),C(10,10,10)
      DATA  A,B/1000*1.,1000*2./,C/1000*3./,NN/10/

      DO 10 I=2,NN
       DO 10 J=2,NN
        DO 20 K=2,NN
         A(I,J,K) = B(I,J-1,K)+C(I,J,K)
  20    CONTINUE
        C(I-1,J,2) = FLOAT(I)
        DO 30 K=2,NN
         B(I,J,K) = A(I,J-1,K)*C(I,J,K)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((C(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
