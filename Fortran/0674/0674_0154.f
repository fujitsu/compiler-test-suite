       REAL A(50,3),B(50,3),C(50,3),D(50,3)
       DATA B/150*1.0/,D/150*3.0/
       DO 3 K=1,3
         DO 1 I=1,50
           A(I,K)=-B(I,K)
 1     CONTINUE
         DO 2 J=1,50
           C(J,K)=-D(J,K)
 2     CONTINUE
 3     CONTINUE
       PRINT *,A,C
       END
