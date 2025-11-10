       LOGICAL L1,L2,L3,L4,LZ
       DATA L1,L2,L3,L4/3*.FALSE.,.TRUE./
       LOGICAL LT(20,20),LF(20,20),LX(20,20)
       LOGICAL X1(20,20),X2(20,20),X3(20,20),X4(20,20)
       DATA LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./
       DATA LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./
       DATA LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./
       LOGICAL T1(30,30),T2(30,30),T3(30,30),T4(30,30)
       DATA T1,T2,T3,T4/2700*.TRUE.,900*.FALSE./
       REAL*8 A1(20,5),A2(21,21),A3(20,20,5)
       REAL*8 B1(20,5),B2(20,20),B3(20,20,5)
       REAL*8 C1(20,5),C2(21,21),C3(20,20,5)
       REAL*8 R1(20,5),R2(20,20),R3(20,20,5)
       DATA A1,A2,A3/100*3.0D0,441*2.0D0,2000*1.0D0/
       DATA B1,B2,B3/100*1.0D0,400*2.0D0,2000*3.0D0/
       DATA C1,C2,C3/100*2.0D0,441*1.0D0,2000*3.0D0/
       DATA R1,R2,R3/100*3.0D0,400*1.0D0,2000*2.0D0/
       DATA N5/5/,N20,NN1/20,1/

       DO 1 K=1,5
       DO 1 J=1,N20
       DO 1 I=1,N20
         R2(J,I)=B2(J,I)-C2(J,I)
         R3(J,I,K)=B3(J,I,K)-A3(J,I,K)
         IF(R2(J,I).GT.R3(J,I,K)) THEN
            LT(J,I)=.NOT.LT(J,I)
            R2(J,I)=B2(J,I)-C2(J,I)
         ELSE
           IF(R2(J,I).LE.R3(J,I,K)) THEN
              LF(J,I)=.NOT.LF(J,I)
              R3(J,I,K)=B3(J,I,K)-A3(J,I,K)
           ENDIF
         ENDIF
1      CONTINUE

       DO 30 K=1,5
           DO 20 I=1,N20,NN1
           DO 10 J=1,N20,1
             L1=T1(J,I)
             L2=T2(J+1,I)
             L3=T3(J+1,I)
             L4=T4(J+1,I)
             IF(I.LE.N5) THEN
               R1(J,I)=B1(J,I)+C1(J,I)-A1(J,I)
             ENDIF
             IF((.NOT.L3).AND.L4) THEN
               IF((.NOT.L1).AND.L2) THEN
                 R2(J,I)=A2(J,I)-B2(J,I)
               ELSE
                 R2(J,I)=C2(J,I)-B2(J,I)
               ENDIF
             ELSE
               IF((.NOT.L4).AND.L3) THEN
                 IF(L1.AND.L2) THEN
                   R3(J,I,K)=A3(J,I,K)+B3(J,I,K)
                 ELSE
                   R3(J,I,K)=C3(J,I,K)-B3(J,I,K)
                 ENDIF
               ELSE
                 IF((.NOT.L4).AND.(.NOT.L3)) THEN
                   IF(L1.AND.L2) THEN
                     A2(J+1,I)=B2(J+1,I)-B3(J,I,K)
                   ELSE
                     C2(J+1,I)=A2(J+1,I)-B3(J,I,K)
                   ENDIF
                 ENDIF
               ENDIF
             ENDIF
 11          CONTINUE

             X1(J,I)=L1
             X2(J,I)=L2
             X3(J,I)=L3
             X4(J,I)=L4
             IF((.NOT.L2).AND.(.NOT.L3).AND.L4) THEN
               T3(J+1,I)=.TRUE.
               T4(J+1,I)=.FALSE.
               GO TO 12
             ENDIF
             IF((.NOT.L2).AND.L3.AND.(.NOT.L4)) THEN
               T4(J+1,I)=.TRUE.
               GO TO 12
             ENDIF
             IF((.NOT.L2).AND.L3.AND.L4) THEN
               T2(J+1,I)=.TRUE.
               T3(J+1,I)=.FALSE.
               T4(J+1,I)=.FALSE.
               GO TO 12
             ENDIF
             IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN
               T4(J+1,I)=.TRUE.
               GO TO 12
             ENDIF
             IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.L4) THEN
               T3(J+1,I)=.TRUE.
               T4(J+1,I)=.FALSE.
               GO TO 12
             ENDIF
             IF((.NOT.L1).AND.L2.AND.L3.AND.(.NOT.L4)) THEN
               T4(J+1,I)=.TRUE.
               GO TO 12
             ENDIF
             IF((.NOT.L2).AND.(.NOT.L3).AND.(.NOT.L4)) THEN
               T4(J+1,I)=.TRUE.
               GO TO 12
             ENDIF
             IF((.NOT.L1).AND.L2.AND.L3.AND.L4) THEN
               T1(J,I)=.TRUE.
               T2(J+1,I)=.FALSE.
               T3(J+1,I)=.FALSE.
               T4(J+1,I)=.FALSE.
               GO TO 12
             ENDIF
             IF(L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN
               T4(J+1,I)=.TRUE.
               GO TO 12
             ENDIF
             IF(L2.AND.(.NOT.L3).AND.L4) THEN
               T3(J+1,I)=.TRUE.
               T4(J+1,I)=.FALSE.
               GO TO 12
             ENDIF
             IF(L2.AND.L3.AND.(.NOT.L4)) THEN
               T4(J+1,I)=.TRUE.
               GO TO 12
             ENDIF
             IF(L1.AND.L2.AND.L3.AND.L4) THEN
               T1(J,I)=.FALSE.
               T2(J+1,I)=.FALSE.
               T3(J+1,I)=.FALSE.
               T4(J+1,I)=.FALSE.
               GO TO 12
             ENDIF
             LZ=L1.OR.L2.OR.L3.OR.L4
             IF(LZ) THEN
               GO TO 12
             ELSE
               T1(J,I)=.FALSE.
               T2(J+1,I)=.FALSE.
               T3(J+1,I)=.FALSE.
               T4(J+1,I)=.TRUE.
             ENDIF
 12        CONTINUE
             LX(J,I)=LT(J,I).AND.LF(J,I)
             IF(LX(J,I)) THEN
               LX(J,I)=.NOT.LT(J,I)
             ELSE
               LX(J,I)=.NOT.LF(J,I)
             ENDIF
  10       CONTINUE
  20       CONTINUE
  30   CONTINUE
       PRINT *,R1,R2,R3,LX,LF
       END
