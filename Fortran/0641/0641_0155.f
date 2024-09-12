      PROGRAM MAIN


       INTEGER*4 IA(10,10), IB(10,10), IC(10,10), IS1
       INTEGER*2 IHA(10,10), IHB(10,10), IHC(10,10), IHS
       LOGICAL*4 LA(10,10), LB(10,10), LC(10,10), LS1
       LOGICAL*1 LBA(10,10), LBB(10,10), LBC(10,10), LBS1
       REAL RA(10,10), RB(10,10), RC(10,10), RS1
       REAL*8 DA(10,10), DB(10,10), DC(10,10), DS1
       REAL*8 QA(10,10), QB(10,10), QC(10,10), QS1
       COMPLEX*8 CA(10,10), CB(10,10), CC(10,10), CS1
       COMPLEX*16 CDA(10,10), CDB(10,10), CDC(10,10), CDS1
       COMPLEX*16 CQA(10,10), CQB(10,10), CQC(10,10), CQS1
       INTEGER N3, N2, N1
       PARAMETER (N3 = 10, N2 = 10, N1 = 10)
       INTEGER*2 HI5, HI4, HI3, HI2, HI1
       REAL RR1
       DOUBLE PRECISION DD25, DD24, DD23, DD22, DD21, DD20, DD19, DD18, 
     X   DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, 
     X   DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC1

C$OMP PARALLEL SHARED (IA,IB,IC,RA,RB,RC,DA,DB,DC,QA,QB,QC,IHA,IHB,IHC,
C$OMP& LB,LBA,LBB,LBC,CA,CB,CC,CDA,CDB,CDC,CQA,CQB,CQC) PRIVATE (J,I)
C$OMP DO 
       DO J=1,10
        DO I=1,10
         IA(I,J) = 0
         IB(I,J) = I + J
         IC(I,J) = I - J
         RA(I,J) = 0.
         RB(I,J) = I + J
         RC(I,J) = I - J
         DA(I,J) = 0D0
         DB(I,J) = I + J
         DC(I,J) = I - J
         QA(I,J) = 0D0
         QB(I,J) = I + J
         QC(I,J) = I - J
         IHA(I,J) = 0
         IHB(I,J) = I + J
         IHC(I,J) = I - J
         LB(I,J) = 0 .EQ. MOD (I, 2)
         LBA(I,J) = .FALSE.
         LBB(I,J) = 0 .EQ. MOD (I, 3)
         LBC(I,J) = 0 .EQ. MOD (I, 2)
         CA(I,J) = (0., 0.)
         CB(I,J) = I - 1
         CC(I,J) = I + 1
         CDA(I,J) = 0
         CDB(I,J) = I - 1
         CDC(I,J) = I + 1
         CQA(I,J) = 0
         CQB(I,J) = I - 1
         CQC(I,J) = I + 1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
       DO I=1,6,5
        DD5 = ABS (QB(I,1))
        DD6 = ABS (QB(I+1,1))
        DD7 = ABS (QB(I+2,1))
        DD8 = ABS (QB(I+3,1))
        DD2 = ABS (QB(I+4,1))
        DD9 = SQRT (DD5)
        DD10 = SQRT (DD6)
        DD11 = SQRT (DD7)
        DD12 = SQRT (DD8)
        DD1 = SQRT (DD2)
        DD21 = DD9 * QC(I,1)
        DD22 = DD10 * QC(I+1,1)
        DD23 = DD11 * QC(I+2,1)
        DD24 = DD12 * QC(I+3,1)
        DD25 = DD1 * QC(I+4,1)
        DD5 = ABS (QB(I,2))
        DD6 = ABS (QB(I+1,2))
        DD7 = ABS (QB(I+2,2))
        DD8 = ABS (QB(I+3,2))
        DD2 = ABS (QB(I+4,2))
        QA(I,1) = DD21
        DD9 = SQRT (DD5)
        QA(I+1,1) = DD22
        DD10 = SQRT (DD6)
        QA(I+2,1) = DD23
        DD11 = SQRT (DD7)
        QA(I+3,1) = DD24
        DD12 = SQRT (DD8)
        QA(I+4,1) = DD25
        DD1 = SQRT (DD2)
        QC(I,2) = DD9 + QA(I,2)
        QC(I+1,2) = DD10 + QA(I+1,2)
        QC(I+2,2) = DD11 + QA(I+2,2)
        QC(I+3,2) = DD12 + QA(I+3,2)
        QC(I+4,2) = DD1 + QA(I+4,2)
       END DO
C$OMP PARALLEL SHARED (IA,IB,IC) PRIVATE (K,I,J)
C$OMP DO 
       DO K=1,10
        DO I=1,10
         DO J=1,7,4
          IA(J,K) = IB(J,K) + IC(J,K)
          IA(J+1,K) = IB(J+1,K) + IC(J+1,K)
          IA(J+2,K) = IB(J+2,K) + IC(J+2,K)
          IA(J+3,K) = IB(J+3,K) + IC(J+3,K)
         END DO
         IA(9,K) = IB(9,K) + IC(9,K)
         IA(10,K) = IB(10,K) + IC(10,K)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO M=1,10
        DO L=1,10
         IF (LB(L,M)) THEN
          RR1 = RB(L,M) * RC(L,M)
          RA(L,M) = RR1
         END IF
        END DO
       END DO


       WRITE (6, *) '----- TEST NO.2 -----'
C$OMP PARALLEL SHARED (QA,QB,QC,DB,DS1,CA,CB,CC,RA,RB,RC) PRIVATE (I,L,M
C$OMP& ,K,J)
C$OMP DO LASTPRIVATE (DS1)
       DO I=1,10
        QA(I,1) = SQRT (ABS (QB(I,1))) * QC(I,1)
        DS1 = 0D0
        DO L=1,10
         DO M=1,6,5
          DS1 = DS1 + DB(M,L)
          DS1 = DS1 + DB(M+1,L)
          DS1 = DS1 + DB(M+2,L)
          DS1 = DS1 + DB(M+3,L)
          DS1 = DS1 + DB(M+4,L)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K=1,10
        DO I=1,10
         DO J=1,7,4
          CA(J,K) = CB(J,K) + CC(J,K)
          CA(J+1,K) = CB(J+1,K) + CC(J+1,K)
          CA(J+2,K) = CB(J+2,K) + CC(J+2,K)
          CA(J+3,K) = CB(J+3,K) + CC(J+3,K)
         END DO
         CA(9,K) = CB(9,K) + CC(9,K)
         CA(10,K) = CB(10,K) + CC(10,K)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,10
        DO I=1,10
         DO M=1,7,4
          RA(M,L) = RB(M,L) * RC(M,L)
          RA(M+1,L) = RB(M+1,L) * RC(M+1,L)
          RA(M+2,L) = RB(M+2,L) * RC(M+2,L)
          RA(M+3,L) = RB(M+3,L) * RC(M+3,L)
         END DO
         RA(9,L) = RB(9,L) * RC(9,L)
         RA(10,L) = RB(10,L) * RC(10,L)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' DS1 = ', DS1

       WRITE (6, *) '----- TEST NO.3 -----'
       DO I=1,6,5
        DD13 = ABS (CQB(I,1))
        DD14 = ABS (CQB(I+1,1))
        DD15 = ABS (CQB(I+2,1))
        DD16 = ABS (CQB(I+3,1))
        DD4 = ABS (CQB(I+4,1))
        DD17 = SQRT (DD13)
        DD18 = SQRT (DD14)
        DD19 = SQRT (DD15)
        DD20 = SQRT (DD16)
        DD3 = SQRT (DD4)
        CQA(I,1) = DD17 * CQC(I,1)
        CQA(I+1,1) = DD18 * CQC(I+1,1)
        CQA(I+2,1) = DD19 * CQC(I+2,1)
        CQA(I+3,1) = DD20 * CQC(I+3,1)
        CQA(I+4,1) = DD3 * CQC(I+4,1)
        HI1 = IHA(I,2) + IHC(I,2)
        HI2 = IHA(I+1,2) + IHC(I+1,2)
        HI3 = IHA(I+2,2) + IHC(I+2,2)
        HI4 = IHA(I+3,2) + IHC(I+3,2)
        HI5 = IHA(I+4,2) + IHC(I+4,2)
        IHC(I+4,2) = HI5
        IHC(I+3,2) = HI4
        IHC(I+2,2) = HI3
        IHC(I+1,2) = HI2
        IHC(I,2) = HI1
       END DO
       DO K=1,10
        DO J=1,10
         IF (CA(J,K) .NE. CB(J,K)) THEN
          DC1 = CDB(J,K) + CDC(J,K)
          CDA(J,K) = DC1
         END IF
        END DO
       END DO
C$OMP PARALLEL SHARED (QA,QB,QC) PRIVATE (M,I,L)
C$OMP DO 
       DO M=1,6,5
        DO I=1,10
         DO L=1,6,5
          QA(L,M) = QB(L,M) * QC(M,L)
          QA(L+1,M) = QB(L+1,M) * QC(M,L+1)
          QA(L+2,M) = QB(L+2,M) * QC(M,L+2)
          QA(L+3,M) = QB(L+3,M) * QC(M,L+3)
          QA(L+4,M) = QB(L+4,M) * QC(M,L+4)
          QA(L,M+1) = QB(L,M+1) * QC(M+1,L)
          QA(L+1,M+1) = QB(L+1,M+1) * QC(M+1,L+1)
          QA(L+2,M+1) = QB(L+2,M+1) * QC(M+1,L+2)
          QA(L+3,M+1) = QB(L+3,M+1) * QC(M+1,L+3)
          QA(L+4,M+1) = QB(L+4,M+1) * QC(M+1,L+4)
          QA(L,M+2) = QB(L,M+2) * QC(M+2,L)
          QA(L+1,M+2) = QB(L+1,M+2) * QC(M+2,L+1)
          QA(L+2,M+2) = QB(L+2,M+2) * QC(M+2,L+2)
          QA(L+3,M+2) = QB(L+3,M+2) * QC(M+2,L+3)
          QA(L+4,M+2) = QB(L+4,M+2) * QC(M+2,L+4)
          QA(L,M+3) = QB(L,M+3) * QC(M+3,L)
          QA(L+1,M+3) = QB(L+1,M+3) * QC(M+3,L+1)
          QA(L+2,M+3) = QB(L+2,M+3) * QC(M+3,L+2)
          QA(L+3,M+3) = QB(L+3,M+3) * QC(M+3,L+3)
          QA(L+4,M+3) = QB(L+4,M+3) * QC(M+3,L+4)
          QA(L,M+4) = QB(L,M+4) * QC(M+4,L)
          QA(L+1,M+4) = QB(L+1,M+4) * QC(M+4,L+1)
          QA(L+2,M+4) = QB(L+2,M+4) * QC(M+4,L+2)
          QA(L+3,M+4) = QB(L+3,M+4) * QC(M+4,L+3)
          QA(L+4,M+4) = QB(L+4,M+4) * QC(M+4,L+4)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       WRITE (6, *) '----- TEST NO.4 -----'
       DO I=1,10
        IS1 = 0
        DO L=1,10
         DO M=1,10
          IF (IA(M,L) .NE. IB(M,L)) THEN
           IS1 = IS1 + IB(L,M)
           IA(L,M) = IB(L,M) + IC(L,M)
           RA(L,M) = RB(L,M) * RC(M,L)
          END IF
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (CQA,CQB,CQC) PRIVATE (J,I,K)
C$OMP DO 
       DO J=1,10
        DO I=1,10
         DO K=1,9,2
          CQA(K,J) = CQB(K,J) * CQC(K,J)
          CQA(K+1,J) = CQB(K+1,J) * CQC(K+1,J)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        LBA(I,1) = LBB(I,1) .OR. LBC(I,1)
        LBA(I+1,1) = LBB(I+1,1) .OR. LBC(I+1,1)
        LBA(I+2,1) = LBB(I+2,1) .OR. LBC(I+2,1)
        LBA(I+3,1) = LBB(I+3,1) .OR. LBC(I+3,1)
        LBA(I+4,1) = LBB(I+4,1) .OR. LBC(I+4,1)
       END DO


       WRITE (6, *) '----- TEST NO.5 -----'
       DO I=1,10
        QA(I,1) = QB(I,1)
        DO K=1,6,5
         DO J=1,6,5
          QA(J,K) = QB(J,K) + QC(K,J)
          QA(J+1,K) = QB(J+1,K) + QC(K,J+1)
          QA(J+2,K) = QB(J+2,K) + QC(K,J+2)
          QA(J+3,K) = QB(J+3,K) + QC(K,J+3)
          QA(J+4,K) = QB(J+4,K) + QC(K,J+4)
          QA(J,K+1) = QB(J,K+1) + QC(K+1,J)
          QA(J+1,K+1) = QB(J+1,K+1) + QC(K+1,J+1)
          QA(J+2,K+1) = QB(J+2,K+1) + QC(K+1,J+2)
          QA(J+3,K+1) = QB(J+3,K+1) + QC(K+1,J+3)
          QA(J+4,K+1) = QB(J+4,K+1) + QC(K+1,J+4)
          QA(J,K+2) = QB(J,K+2) + QC(K+2,J)
          QA(J+1,K+2) = QB(J+1,K+2) + QC(K+2,J+1)
          QA(J+2,K+2) = QB(J+2,K+2) + QC(K+2,J+2)
          QA(J+3,K+2) = QB(J+3,K+2) + QC(K+2,J+3)
          QA(J+4,K+2) = QB(J+4,K+2) + QC(K+2,J+4)
          QA(J,K+3) = QB(J,K+3) + QC(K+3,J)
          QA(J+1,K+3) = QB(J+1,K+3) + QC(K+3,J+1)
          QA(J+2,K+3) = QB(J+2,K+3) + QC(K+3,J+2)
          QA(J+3,K+3) = QB(J+3,K+3) + QC(K+3,J+3)
          QA(J+4,K+3) = QB(J+4,K+3) + QC(K+3,J+4)
          QA(J,K+4) = QB(J,K+4) + QC(K+4,J)
          QA(J+1,K+4) = QB(J+1,K+4) + QC(K+4,J+1)
          QA(J+2,K+4) = QB(J+2,K+4) + QC(K+4,J+2)
          QA(J+3,K+4) = QB(J+3,K+4) + QC(K+4,J+3)
          QA(J+4,K+4) = QB(J+4,K+4) + QC(K+4,J+4)
         END DO
        END DO
        IHA(I,I) = IHB(I,I) + IHC(I,I)
        DO M=1,10
         DO L=1,10
          IF (LBA(L,M)) THEN
           IHA(L,M) = IHB(L,M) * IHC(M,L)
          END IF
         END DO
        END DO
       END DO


       WRITE (6, *) '----- TEST NO.6 -----'
       DO I=1,10
        RA(I,I) = RB(I,I) + RC(I,I)
        RB(I,I) = RA(I,I) * RC(I,I)
        DO M=1,7,4
         DO L=1,10
          IF (RB(L,M) .GT. 0.) THEN
           RA(L,M) = RB(L,M) * RC(L,M)
          END IF
          IF (RB(L,M+1) .GT. 0.) THEN
           RA(L,M+1) = RB(L,M+1) * RC(L,M+1)
          END IF
          IF (RB(L,M+2) .GT. 0.) THEN
           RA(L,M+2) = RB(L,M+2) * RC(L,M+2)
          END IF
          IF (RB(L,M+3) .GT. 0.) THEN
           RA(L,M+3) = RB(L,M+3) * RC(L,M+3)
          END IF
         END DO
        END DO
        DO M=9,10,1
         DO L=1,10
          IF (RB(L,M) .GT. 0.) THEN
           RA(L,M) = RB(L,M) * RC(L,M)
          END IF
         END DO
        END DO
       END DO

       WRITE (6, *) 'IA  = ', IA
       WRITE (6, *) 'RA  = ', RA
       WRITE (6, *) 'DA  = ', DA
       WRITE (6, *) 'DC  = ', DC
       WRITE (6, *) 'IHA  = ', IHA
       WRITE (6, *) 'QA  = ', QA
       WRITE (6, *) 'CA  = ', CA
       WRITE (6, *) 'CDA  = ', CDA
       WRITE (6, *) 'CQA  = ', CQA

       STOP 
      END
