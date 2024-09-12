      PROGRAM MAIN
      IMPLICIT INTEGER*4 (I-P)
      REAL*4 A(10),B(10),C(10),D(10),S
      REAL*4 W(10)/10*2.0/,X(10)/10*5.0/,Y(10)/10*5.0/,Z(10)/10*8.0/

      DO 40 L=1,10
      DO 10 I=1,10
       A(I) = W(I)
 10   CONTINUE
      DO 20 J=1,10
       B(J) = X(I-1)
 20   CONTINUE
      DO 30 K=1,10
       C(K) = Y(I-1)
 30   CONTINUE
      S = A(5)
       D(L) = Z(I-1)
 40   CONTINUE
      PRINT *,S
      STOP
      END
