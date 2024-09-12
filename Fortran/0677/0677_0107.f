      REAL A(10,10)   /100*1./
      REAL B(10,10)   /100*1./
      REAL C(10,10)   /100*1./
      DO 10 I=1,10
       DO 10 J=1,10
        A(I,J)=0.
        DO 10 K=1,10
10       A(I,J)=A(I,J)+B(I,K)*C(K,J)
      WRITE(6,*) A(1,1),A(10,10)
      END
