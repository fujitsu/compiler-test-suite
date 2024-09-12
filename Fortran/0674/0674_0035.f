      PROGRAM MAIN
      IMPLICIT INTEGER*4 (I-P)
      REAL*4 A(10),B(10),C(10),D(10)
      DATA D/10*0.0/
      DATA M/10/,N/10/,O/10/,P/10/

      DO 10 I=1,M
       A(I) = 1.0
 10   CONTINUE
      DO 20 J=1,N
       B(J) = 2.0
 20   CONTINUE
      DO 30 K=1,O
       C(K) = 3.0
 30   CONTINUE
      DO 40 L=1,P
       D(L) = 3.0
 40   CONTINUE
      PRINT *,A,B,C,D
      STOP
      END
