      PROGRAM MAIN
      IMPLICIT INTEGER*4 (I-P)
      REAL*4 A(10),B(10),C(10),D(10),S
      REAL*4 W(10)/10*2.0/,X(10)/10*5.0/,Y(10)/10*5.0/,Z(10)/10*8.0/
      DATA M,N,O,P/1,2,3,4/
      data d/10*0/,s/0/

      DO 10 I=1,M
       A(I) = W(I)
 10   CONTINUE
      S = D(5)
      DO 20 J=1,N
       B(J) = X(I)
 20   CONTINUE
      DO 30 K=1,O
       C(K) = Y(I)
 30   CONTINUE
      DO 40 L=1,P
       D(L) = Z(I)
 40   CONTINUE
      PRINT *,S
      STOP
      END
