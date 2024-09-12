      PARAMETER (N=100)
      REAL A(N),B(N),C(N)
      DIMENSION MI(5)
      DATA MI/10,20,30,40,50/
      DO 1000 II=1,5
      M=MI(II)
       DO 10 I=1,N
        A(I)=SQRT(REAL(I))+REAL(M)*2.5
   10  CONTINUE
       DO 20 I=1,N
        B(I)=A(I)+M
   20  CONTINUE
       DO 30 I=1,N
        C(I)=(A(I)+B(I))/M
   30  CONTINUE
       PRINT *,A,B,C
 1000 CONTINUE
      STOP
      END
