       REAL A(60,3),B(60,3),C(60,3),D(60,3)
       REAL O(60,3),P(60,3),Q(60,3),R(60,3)
       DATA B/180*1.0/,D/180*3.0/
       DATA P/180*1.0/,R/180*3.0/,MM/50/
       A=0
       C=0
       O=0
       Q=0
       DO 30 K=1,3
         DO 1 I=1,MM
           A(I,K)=-B(I,K)
 1     CONTINUE
         DO 2 J=1,MM
           C(J,K)=-D(J,K)
 2     CONTINUE
         DO 4 N=1,MM
           O(N,K)=P(N,K)
 4     CONTINUE
         DO 5 M=1,MM
           Q(M,K)=R(M,K)
 5     CONTINUE
30     CONTINUE
       PRINT *,A,C
       PRINT *,O,Q
       END
