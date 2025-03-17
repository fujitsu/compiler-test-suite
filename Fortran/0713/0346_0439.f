       REAL A(50,3),B(50,3),C(50,3),D(50,3)
       REAL O(60,3),P(60,3),Q(60,3),R(60,3)
       DATA B/150*1.0/,D/150*3.0/
       DATA P/180*1.0/,R/180*3.0/,NN/50/
       A=0
       C=0
       O=0
       Q=0
       K=2
       DO 1 I=1,NN
         A(I,K)=-B(I,K)-I
         D(I,K)=-A(I,K)+I-1
         P(I,K)=D(I,K)-A(I,K)
         R(I,K)=D(I,K)+A(I,K)
 1     CONTINUE
       SMAX=1.234E1
       SMIN=2.200E1
       DO 30 K=1,3
         DO 2 J=1,NN
           C(J,K)=-D(J,K)
           IF(J.GT.25) SMAX=MAX(C(J,K),SMAX)
 2       CONTINUE
         MM=NN
         DO 4 N=1,NN
           O(N,K)=P(N,K)
           IF(O(N,K).LE.10.0E0) SMIN=MIN(SMIN,P(J,K))
 4       CONTINUE
30     CONTINUE
       PRINT *,SMAX,SMIN,A,C,O
       END
