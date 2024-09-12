       REAL A(50,3),B(50,3),C(50,3),D(50,3)
       LOGICAL L1(50,3),L2(50,3)
       DATA B/150*1.0/,D/150*3.0/
       DATA L1/150*.FALSE./
       DATA L2/50*.TRUE.,50*.FALSE.,50*.TRUE./
       JJ=1
       DO 3 K=1,3
         DO 1 I=1,50
           A(I,K)=-B(I,K)
 1     CONTINUE
         IF(L2(JJ,K)) GO TO 11
         L1(JJ,K)=.NOT.L2(JJ,K)
         JJ=JJ+10
11       JJ=JJ+1
         DO 2 J=1,50
           C(J,K)=-D(J,K)
 2     CONTINUE
 3     CONTINUE
       PRINT *,A,C,L1
       END
