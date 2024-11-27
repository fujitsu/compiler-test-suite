       DIMENSION A(1024),B(1024),C(1024)
       DATA B,C/1024*3.0,1024*4.0/
       N = 1024
       DO 111 I= 1,N
         A(I) = B(I) + C(I) + I
 111   CONTINUE
       PRINT *,A
       STOP
       END
