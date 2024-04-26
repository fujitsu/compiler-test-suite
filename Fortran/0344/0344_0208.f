      REAL*4 A(100),B(100),C(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*0./,N/100/,M/1/
      EQUIVALENCE (M,K)
      DO 10 I=1,N,2
         A(M) = B(M)
         K = K + 1
   10 CONTINUE
      WRITE(6,2) A,B
C
      DO 1 I=1,5
    1   N = I + 1
C
      DO 20 I=1,N,2
         C(M) = B(M)
         K = K + 1
   20 CONTINUE
      WRITE(6,*)
      WRITE(6,2) C,B
    2 FORMAT(10F8.3)
      STOP
      END
