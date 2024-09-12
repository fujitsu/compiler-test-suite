      REAL*4  A(20,20,20),B(20,20,20),C(20,20,20)
      DATA  A,B,C/8000*1.,8000*2.,8000*3./

      DO 5 I=1,20
       DO 5 J=1,20
        DO 5 K=1,20
          B(K,J,I)=FLOAT(K)
          C(K,J,I)=FLOAT(J)
          A(K,J,I)=FLOAT(I)
  5   CONTINUE
      DO 10 I=2,10
       N=(I-1)*2
       DO 10 J=1,20
        DO 10 K=1,20
          A(K,J,N)=B(K,J,N)+C(K,J,I)+A(K,J,N+1)*A(K,J,N-1)
 10   CONTINUE

      WRITE(6,*) ' A=',(((A(I,J,K),I=1,10),J=1,10),K=1,10)
      DO 30 NN=2,8
      DO 30 I=2,10
        N=(I-1)*2
        DO 20 J=1,20
         DO 20 K=1,20
           C(K,J,N)=B(K,J,N)+A(K,J,I)
 20     CONTINUE
        DO 40 J=1,20
         DO 40 K=1,20
           B(K,J,N+1)=C(5,5,N+1)+A(K,J,I)
 40     CONTINUE
 30   CONTINUE

      WRITE(6,*) ' B=',(((B(I,J,K),I=1,10),J=1,10),K=1,10)
      WRITE(6,*) ' C=',(((C(I,J,K),I=1,10),J=1,10),K=1,10)
      STOP
      END
