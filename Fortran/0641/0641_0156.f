      PROGRAM MAIN


       INTEGER*4 IA(10,10), IB(10,10), IC(10,10), IS1
       INTEGER*2 IHA(10,10), IHB(10,10), IHC(10,10), IHS1
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
       INTEGER*2 HI1
       REAL RR1
       COMPLEX*16 DC1

C$OMP PARALLEL SHARED (IA,IB,IC,RA,RB,RC,DA,DB,DC,QA,QB,QC,IHA,IHB,IHC,
C$OMP& LB,LBA,CA,CB,CC,CDA,CDB,CDC,CQA,CQB,CQC) PRIVATE (J,I)
C$OMP DO 
       DO J=1,10
        DO I=1,9,2
         IA(I,J) = 0
         IA(I+1,J) = 0
         IB(I,J) = I + J
         IB(I+1,J) = I + J + 1
         IC(I,J) = I - J
         IC(I+1,J) = I - J + 1
         RA(I,J) = 0.
         RA(I+1,J) = 0.
         RB(I,J) = I + J
         RB(I+1,J) = I + J + 1
         RC(I,J) = I - J
         RC(I+1,J) = I - J + 1
         DA(I,J) = 0D0
         DA(I+1,J) = 0D0
         DB(I,J) = I + J
         DB(I+1,J) = I + J + 1
         DC(I,J) = I - J
         DC(I+1,J) = I - J + 1
         QA(I,J) = 0D0
         QA(I+1,J) = 0D0
         QB(I,J) = I + J
         QB(I+1,J) = I + J + 1
         QC(I,J) = I - J
         QC(I+1,J) = I - J + 1
         IHA(I,J) = 0
         IHA(I+1,J) = 0
         IHB(I,J) = I + J
         IHB(I+1,J) = I + J + 1
         IHC(I,J) = I - J
         IHC(I+1,J) = I - J + 1
         LB(I,J) = 0 .EQ. MOD (I, 2)
         LB(I+1,J) = 0 .EQ. MOD (I + 1, 2)
         LBA(I,J) = .FALSE.
         LBA(I+1,J) = .FALSE.
         CA(I,J) = (0., 0.)
         CA(I+1,J) = (0., 0.)
         CB(I,J) = I - 1
         CB(I+1,J) = I
         CC(I,J) = I + 1
         CC(I+1,J) = I + 2
         CDA(I,J) = 0
         CDA(I+1,J) = 0
         CDB(I,J) = I - 1
         CDB(I+1,J) = I
         CDC(I,J) = I + 1
         CDC(I+1,J) = I + 2
         CQA(I,J) = 0
         CQA(I+1,J) = 0
         CQB(I,J) = I - 1
         CQB(I+1,J) = I
         CQC(I,J) = I + 1
         CQC(I+1,J) = I + 2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       IS1 = 0

       WRITE (6, *) '----- TEST NO.1 -----'
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
C$OMP PARALLEL SHARED (CA,CB,CC,DB,DS1,RA,RB,RC) PRIVATE (K,I,J,L,M)
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
C$OMP DO LASTPRIVATE (DS1)
       DO I=1,10
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
       DO I=1,10
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


       WRITE (6, *) '----- TEST NO.5 -----'
C$OMP PARALLEL SHARED (QA,QB,QC) PRIVATE (K,I,J)
C$OMP DO 
       DO K=1,6,5
        DO I=1,10
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
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO M=1,10
        DO L=1,10
         IF (LBA(L,M)) THEN
          HI1 = IHB(L,M) * IHC(M,L)
          IHA(L,M) = HI1
         END IF
        END DO
       END DO


       WRITE (6, *) '----- TEST NO.6 -----'
       DO I=1,10
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
