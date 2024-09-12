      PROGRAM MAIN
      REAL*4  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.,8000*2.,8000*3./,NN/15/

      DO 10 I=1,NN
       DO 20 J=1,NN
        DO 20 K=1,20
          C(K,J,I)=FLOAT(J)
  20   CONTINUE
       DO 30 J=1,15
        DO 30 K=1,20
         A(K,J,I)=B(K,J,I)*C(K,J,I)
  30   CONTINUE
       DO 40 J=3,17
        DO 40 K=1,20
         B(K,J,I)=A(K,J,I)-C(K,J,I)
  40   CONTINUE
  10  CONTINUE

      WRITE(6,*) ' A=',(((A(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) ' B=',(((B(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
