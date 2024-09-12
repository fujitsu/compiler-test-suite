       REAL A(50,3),B(50,3),C(50,3),D(50,3)
       REAL O(60,3),P(60,3),Q(60,3),R(60,3)
       DATA B/150*1.0/,D/150*3.0/
       DATA P/180*1.0/,R/180*3.0/
       DO 30 K=1,3
         DO 1 I=1,50
           A(I,K)=-B(I,K)
 1     CONTINUE
         DO 2 J=1,50
           C(J,K)=-D(J,K)
 2     CONTINUE
         DO 4 N=1,60
           O(N,K)=P(N,K)
 4     CONTINUE
         DO 5 M=1,60
           Q(M,K)=R(M,K)
 5     CONTINUE
30     CONTINUE
       PRINT *,A,C
       PRINT *,O,Q
       END
