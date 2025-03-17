       DIMENSION A(2048),B(2048),C(2048)
       DATA B,C/2048*3.0,2048*4.0/
       N = 2048
       DO 111 I= 1,N
         A(I) = B(I) + C(I) + I
 111   CONTINUE
       PRINT *,A
       STOP
       END
