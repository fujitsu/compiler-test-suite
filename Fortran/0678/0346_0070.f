       DIMENSION A(2084),B(2084),C(2084)
       DATA B,C/2084*3.0,2084*4.0/
       N = 2084
       DO 111 I= 1,N
         A(I) = B(I) + C(I) + I
 111   CONTINUE
       PRINT *,A
       STOP
       END
