      REAL A(10,10)/100*1./
      REAL B(10,10)/100*1./
      REAL C(10,10)/100*1./
      DO 30 I=1,10
       DO 20 J=1,10
        DO 10 K=1,10
         A(I,J)=A(I,J)+B(I,K)*C(K,J)
10      CONTINUE
        A(I,J)=0.
20     CONTINUE
30    CONTINUE
      WRITE(6,*) A(1,1),A(10,10)
      END
