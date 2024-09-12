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
       DOUBLE PRECISION DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, 
     X   DD42, DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, 
     X   DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11
       DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, 
     X   DD1

C$OMP PARALLEL SHARED (IA,IB,IC,RA,RB,RC,DA,DB,DC,QA,QB,QC,IHA,IHB,IHC,
C$OMP& CA,CB,CC,CDA,CDB,CDC,CQA,CQB,CQC) PRIVATE (J,I)
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

       WRITE (6, *) '----- TEST NO.1 -----'
       DO I=1,6,5
        DD11 = DABS (DB(I,1))
        DD12 = DABS (DB(I+1,1))
        DD13 = DABS (DB(I+2,1))
        DD14 = DABS (DB(I+3,1))
        DD2 = DABS (DB(I+4,1))
        DD15 = DSQRT (DD11)
        DD16 = DSQRT (DD12)
        DD17 = DSQRT (DD13)
        DD18 = DSQRT (DD14)
        DD1 = DSQRT (DD2)
        DA(I,1) = DD15 * DC(I,1)
        DA(I+1,1) = DD16 * DC(I+1,1)
        DA(I+2,1) = DD17 * DC(I+2,1)
        DA(I+3,1) = DD18 * DC(I+3,1)
        DA(I+4,1) = DD1 * DC(I+4,1)
        DD11 = DABS (DA(I,2))
        DD12 = DABS (DA(I+1,2))
        DD13 = DABS (DA(I+2,2))
        DD14 = DABS (DA(I+3,2))
        DD2 = DABS (DA(I+4,2))
        DD15 = DSQRT (DD11)
        DD16 = DSQRT (DD12)
        DD17 = DSQRT (DD13)
        DD18 = DSQRT (DD14)
        DD1 = DSQRT (DD2)
        DC(I,2) = DD15 + DB(I,2)
        DC(I+1,2) = DD16 + DB(I+1,2)
        DC(I+2,2) = DD17 + DB(I+2,2)
        DC(I+3,2) = DD18 + DB(I+3,2)
        DC(I+4,2) = DD1 + DB(I+4,2)
       END DO
C$OMP PARALLEL SHARED (IA,IB,IC,RA,RB,RC) PRIVATE (K,I,J,M,L)
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
C$OMP BARRIER
C$OMP DO 
       DO M=1,10
        DO I=1,10
         DO L=1,7,4
          RA(L,M) = RB(L,M) * RC(L,M)
          RA(L+1,M) = RB(L+1,M) * RC(L+1,M)
          RA(L+2,M) = RB(L+2,M) * RC(L+2,M)
          RA(L+3,M) = RB(L+3,M) * RC(L+3,M)
         END DO
         RA(9,M) = RB(9,M) * RC(9,M)
         RA(10,M) = RB(10,M) * RC(10,M)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       WRITE (6, *) '----- TEST NO.2 -----'
C$OMP PARALLEL SHARED (DA,DB,DC,DS1,CA,CB,CC,RA,RB,RC) PRIVATE (I,L,M,K,
C$OMP& J)
C$OMP DO LASTPRIVATE (DS1)
       DO I=1,10
        DA(I,1) = DSQRT (DABS (DB(I,1))) * DC(I,1)
        DC(I,2) = DSQRT (DABS (DA(I,2))) + DB(I,2)
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
        DD19 = DABS (DB(I,1))
        DD20 = DABS (DB(I+1,1))
        DD21 = DABS (DB(I+2,1))
        DD22 = DABS (DB(I+3,1))
        DD4 = DABS (DB(I+4,1))
        DD23 = DSQRT (DD19)
        DD24 = DSQRT (DD20)
        DD25 = DSQRT (DD21)
        DD26 = DSQRT (DD22)
        DD3 = DSQRT (DD4)
        DA(I,1) = DD23 * DC(I,1)
        DA(I+1,1) = DD24 * DC(I+1,1)
        DA(I+2,1) = DD25 * DC(I+2,1)
        DA(I+3,1) = DD26 * DC(I+3,1)
        DA(I+4,1) = DD3 * DC(I+4,1)
        DD19 = DABS (DA(I,2))
        DD20 = DABS (DA(I+1,2))
        DD21 = DABS (DA(I+2,2))
        DD22 = DABS (DA(I+3,2))
        DD4 = DABS (DA(I+4,2))
        DD23 = DSQRT (DD19)
        DD24 = DSQRT (DD20)
        DD25 = DSQRT (DD21)
        DD26 = DSQRT (DD22)
        DD3 = DSQRT (DD4)
        DC(I,2) = DD23 + DB(I,2)
        DC(I+1,2) = DD24 + DB(I+1,2)
        DC(I+2,2) = DD25 + DB(I+2,2)
        DC(I+3,2) = DD26 + DB(I+3,2)
        DC(I+4,2) = DD3 + DB(I+4,2)
       END DO
C$OMP PARALLEL SHARED (CDA,CDB,CDC,QA,QB,QC) PRIVATE (K,I,J,M,L)
C$OMP DO 
       DO K=1,10
        DO I=1,10
         DO J=1,9,2
          CDA(J,K) = CDB(J,K) + CDC(J,K)
          CDA(J+1,K) = CDB(J+1,K) + CDC(J+1,K)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
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
C$OMP PARALLEL SHARED (DA,DB,DC,IB,CQA,CQB,CQC) PRIVATE (I,IS1,M,L,J,K)
C$OMP DO 
       DO I=1,10
        DA(I,1) = DSQRT (DABS (DB(I,1))) * DC(I,1)
        IS1 = 0
        DO M=1,10
         DO L=1,6,5
          IS1 = IS1 + IB(L,M)
          IS1 = IS1 + IB(L+1,M)
          IS1 = IS1 + IB(L+2,M)
          IS1 = IS1 + IB(L+3,M)
          IS1 = IS1 + IB(L+4,M)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
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
        DD27 = DABS (DA(I,2))
        DD28 = DABS (DA(I+1,2))
        DD29 = DABS (DA(I+2,2))
        DD30 = DABS (DA(I+3,2))
        DD6 = DABS (DA(I+4,2))
        DD31 = DSQRT (DD27)
        DD32 = DSQRT (DD28)
        DD33 = DSQRT (DD29)
        DD34 = DSQRT (DD30)
        DD5 = DSQRT (DD6)
        DC(I,2) = DD31 + DB(I,2)
        DC(I+1,2) = DD32 + DB(I+1,2)
        DC(I+2,2) = DD33 + DB(I+2,2)
        DC(I+3,2) = DD34 + DB(I+3,2)
        DC(I+4,2) = DD5 + DB(I+4,2)
       END DO
C$OMP PARALLEL SHARED (IA,IB,IC,RA,RB,RC) PRIVATE (M,I,L)
C$OMP DO 
       DO M=1,6,5
        DO I=1,10
         DO L=1,9,2
          IA(L,M) = IB(L,M) + IC(L,M)
          IA(L+1,M) = IB(L+1,M) + IC(L+1,M)
          IA(L,M+1) = IB(L,M+1) + IC(L,M+1)
          IA(L+1,M+1) = IB(L+1,M+1) + IC(L+1,M+1)
          IA(L,M+2) = IB(L,M+2) + IC(L,M+2)
          IA(L+1,M+2) = IB(L+1,M+2) + IC(L+1,M+2)
          IA(L,M+3) = IB(L,M+3) + IC(L,M+3)
          IA(L+1,M+3) = IB(L+1,M+3) + IC(L+1,M+3)
          IA(L,M+4) = IB(L,M+4) + IC(L,M+4)
          IA(L+1,M+4) = IB(L+1,M+4) + IC(L+1,M+4)
          RA(L,M) = RB(L,M) * RC(M,L)
          RA(L+1,M) = RB(L+1,M) * RC(M,L+1)
          RA(L,M+1) = RB(L,M+1) * RC(M+1,L)
          RA(L+1,M+1) = RB(L+1,M+1) * RC(M+1,L+1)
          RA(L,M+2) = RB(L,M+2) * RC(M+2,L)
          RA(L+1,M+2) = RB(L+1,M+2) * RC(M+2,L+1)
          RA(L,M+3) = RB(L,M+3) * RC(M+3,L)
          RA(L+1,M+3) = RB(L+1,M+3) * RC(M+3,L+1)
          RA(L,M+4) = RB(L,M+4) * RC(M+4,L)
          RA(L+1,M+4) = RB(L+1,M+4) * RC(M+4,L+1)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       WRITE (6, *) '----- TEST NO.5 -----'
       DO I=1,6,5
        DD35 = DABS (DB(I,1))
        DD36 = DABS (DB(I+1,1))
        DD37 = DABS (DB(I+2,1))
        DD38 = DABS (DB(I+3,1))
        DD8 = DABS (DB(I+4,1))
        DD39 = DSQRT (DD35)
        DD40 = DSQRT (DD36)
        DD41 = DSQRT (DD37)
        DD42 = DSQRT (DD38)
        DD7 = DSQRT (DD8)
        DA(I,1) = DD39 * DC(I,1)
        DA(I+1,1) = DD40 * DC(I+1,1)
        DA(I+2,1) = DD41 * DC(I+2,1)
        DA(I+3,1) = DD42 * DC(I+3,1)
        DA(I+4,1) = DD7 * DC(I+4,1)
        DD35 = DABS (DA(I,2))
        DD36 = DABS (DA(I+1,2))
        DD37 = DABS (DA(I+2,2))
        DD38 = DABS (DA(I+3,2))
        DD8 = DABS (DA(I+4,2))
        DD39 = DSQRT (DD35)
        DD40 = DSQRT (DD36)
        DD41 = DSQRT (DD37)
        DD42 = DSQRT (DD38)
        DD7 = DSQRT (DD8)
        DC(I,2) = DD39 + DB(I,2)
        DC(I+1,2) = DD40 + DB(I+1,2)
        DC(I+2,2) = DD41 + DB(I+2,2)
        DC(I+3,2) = DD42 + DB(I+3,2)
        DC(I+4,2) = DD7 + DB(I+4,2)
       END DO
C$OMP PARALLEL SHARED (QA,QB,QC,IHA,IHB,IHC) PRIVATE (K,I,J,M,L)
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
C$OMP BARRIER
C$OMP DO 
       DO M=1,6,5
        DO I=1,10
         DO L=1,6,5
          IHA(L,M) = IHB(L,M) * IHC(M,L)
          IHA(L+1,M) = IHB(L+1,M) * IHC(M,L+1)
          IHA(L+2,M) = IHB(L+2,M) * IHC(M,L+2)
          IHA(L+3,M) = IHB(L+3,M) * IHC(M,L+3)
          IHA(L+4,M) = IHB(L+4,M) * IHC(M,L+4)
          IHA(L,M+1) = IHB(L,M+1) * IHC(M+1,L)
          IHA(L+1,M+1) = IHB(L+1,M+1) * IHC(M+1,L+1)
          IHA(L+2,M+1) = IHB(L+2,M+1) * IHC(M+1,L+2)
          IHA(L+3,M+1) = IHB(L+3,M+1) * IHC(M+1,L+3)
          IHA(L+4,M+1) = IHB(L+4,M+1) * IHC(M+1,L+4)
          IHA(L,M+2) = IHB(L,M+2) * IHC(M+2,L)
          IHA(L+1,M+2) = IHB(L+1,M+2) * IHC(M+2,L+1)
          IHA(L+2,M+2) = IHB(L+2,M+2) * IHC(M+2,L+2)
          IHA(L+3,M+2) = IHB(L+3,M+2) * IHC(M+2,L+3)
          IHA(L+4,M+2) = IHB(L+4,M+2) * IHC(M+2,L+4)
          IHA(L,M+3) = IHB(L,M+3) * IHC(M+3,L)
          IHA(L+1,M+3) = IHB(L+1,M+3) * IHC(M+3,L+1)
          IHA(L+2,M+3) = IHB(L+2,M+3) * IHC(M+3,L+2)
          IHA(L+3,M+3) = IHB(L+3,M+3) * IHC(M+3,L+3)
          IHA(L+4,M+3) = IHB(L+4,M+3) * IHC(M+3,L+4)
          IHA(L,M+4) = IHB(L,M+4) * IHC(M+4,L)
          IHA(L+1,M+4) = IHB(L+1,M+4) * IHC(M+4,L+1)
          IHA(L+2,M+4) = IHB(L+2,M+4) * IHC(M+4,L+2)
          IHA(L+3,M+4) = IHB(L+3,M+4) * IHC(M+4,L+3)
          IHA(L+4,M+4) = IHB(L+4,M+4) * IHC(M+4,L+4)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 


       WRITE (6, *) '----- TEST NO.6 -----'
       DO I=1,6,5
        DD43 = DABS (DB(I,1))
        DD44 = DABS (DB(I+1,1))
        DD45 = DABS (DB(I+2,1))
        DD46 = DABS (DB(I+3,1))
        DD10 = DABS (DB(I+4,1))
        DD47 = DSQRT (DD43)
        DD48 = DSQRT (DD44)
        DD49 = DSQRT (DD45)
        DD50 = DSQRT (DD46)
        DD9 = DSQRT (DD10)
        DA(I,1) = DD47 * DC(I,1)
        DA(I+1,1) = DD48 * DC(I+1,1)
        DA(I+2,1) = DD49 * DC(I+2,1)
        DA(I+3,1) = DD50 * DC(I+3,1)
        DA(I+4,1) = DD9 * DC(I+4,1)
        DD43 = DABS (DA(I,2))
        DD44 = DABS (DA(I+1,2))
        DD45 = DABS (DA(I+2,2))
        DD46 = DABS (DA(I+3,2))
        DD10 = DABS (DA(I+4,2))
        DD47 = DSQRT (DD43)
        DD48 = DSQRT (DD44)
        DD49 = DSQRT (DD45)
        DD50 = DSQRT (DD46)
        DD9 = DSQRT (DD10)
        DC(I,2) = DD47 + DB(I,2)
        DC(I+1,2) = DD48 + DB(I+1,2)
        DC(I+2,2) = DD49 + DB(I+2,2)
        DC(I+3,2) = DD50 + DB(I+3,2)
        DC(I+4,2) = DD9 + DB(I+4,2)
       END DO
C$OMP PARALLEL SHARED (RA,RB,RC) PRIVATE (M,I,L)
C$OMP DO 
       DO M=1,10
        DO I=1,10
         DO L=1,7,4
          RA(L,M) = RB(L,M) * RC(L,M)
          RA(L+1,M) = RB(L+1,M) * RC(L+1,M)
          RA(L+2,M) = RB(L+2,M) * RC(L+2,M)
          RA(L+3,M) = RB(L+3,M) * RC(L+3,M)
         END DO
         RA(9,M) = RB(9,M) * RC(9,M)
         RA(10,M) = RB(10,M) * RC(10,M)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

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
 
 
 
 
 
 
 
