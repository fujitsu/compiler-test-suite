      PROGRAM MAIN
      REAL*4  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B/8000*1.,8000*2./,C/8000*3./,NN/10/

      DO 10 K=2,NN
       DO 10 J=2,NN
        DO 20 I=2,15,2
         A(I,J,5) =B(3,J+1,I-1)+C(K,J,I)
  20    CONTINUE
        DO 30 I=1,15,2
         B(I,J,2) = A(3,J-1,I)*C(J,K,I)
  30    CONTINUE
  10  CONTINUE

      WRITE(6,*) (((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) (((B(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
