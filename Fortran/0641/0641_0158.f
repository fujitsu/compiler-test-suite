      PROGRAM MAIN


       INTEGER*4 IA(10,10), IB(10,10), IC(10,10), IS1/0/
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
       INTEGER II1, K1, J1
       LOGICAL LL2, LL1
       COMPLEX*16 DC15, DC14, DC13, DC12, DC11, DC10, DC9, DC8, DC7, DC6
     X   , DC5, DC4, DC3, DC2, DC1

       RS1 = 0.

C$OMP PARALLEL SHARED (IA,IB,RA,RB,RC,DA,DB,DC,QA,IHA,LA,LC,CA,CB,CC,CDA
C$OMP& ,CDB,CDC,CQA,LB) PRIVATE (LL1,LL2,J1,I)
C$OMP DO 
       DO J1=1,10
        DO I=1,9,2
         IA(I,J1) = 0
         IA(I+1,J1) = 0
         IB(I,J1) = I + J1
         IB(I+1,J1) = I + J1 + 1
         RA(I,J1) = 0.
         RA(I+1,J1) = 0.
         RB(I,J1) = I + J1
         RB(I+1,J1) = I + J1 + 1
         RC(I,J1) = I - J1
         RC(I+1,J1) = I - J1 + 1
         DA(I,J1) = 0D0
         DA(I+1,J1) = 0D0
         DB(I,J1) = I + J1
         DB(I+1,J1) = I + J1 + 1
         DC(I,J1) = I - J1
         DC(I+1,J1) = I - J1 + 1
         QA(I,J1) = 0D0
         QA(I+1,J1) = 0D0
         IHA(I,J1) = 0
         IHA(I+1,J1) = 0
         LA(I,J1) = .FALSE.
         LA(I+1,J1) = .FALSE.
         LL1 = 0 .EQ. MOD (I, 2)
         LL2 = 0 .EQ. MOD (I + 1, 2)
         LC(I,J1) = .NOT.LL1
         LC(I+1,J1) = .NOT.LL2
         CA(I,J1) = (0., 0.)
         CA(I+1,J1) = (0., 0.)
         CB(I,J1) = I - 1
         CB(I+1,J1) = I
         CC(I,J1) = I + 1
         CC(I+1,J1) = I + 2
         CDA(I,J1) = 0
         CDA(I+1,J1) = 0
         CDB(I,J1) = I - 1
         CDB(I+1,J1) = I
         CDC(I,J1) = I + 1
         CDC(I+1,J1) = I + 2
         CQA(I,J1) = 0
         CQA(I+1,J1) = 0
         LB(I+1,J1) = LL2
         LB(I,J1) = LL1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
C$OMP PARALLEL SHARED (IA,IB,RA,RB,LA,LB,LC,DA,DB,CA,CDA,CDB,DC) 
C$OMP& PRIVATE (K1,J1)
C$OMP DO 
       DO K1=1,10
        DO J1=1,10
         IA(J1,K1) = IB(J1,K1) ** 3
         RA(J1,K1) = SQRT (RB(J1,K1))
         IF (LA(J1,K1)) THEN
          LB(J1,K1) = LC(J1,K1) .AND. DA(J1,K1) .GT. DB(J1,K1)
          IF (LB(J1,K1)) THEN
           CA(J1,K1) = CDA(J1,K1) + CDB(J1,K1)
          END IF
         ELSE
          DA(J1,K1) = DSIN (DC(J1,K1))
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.2 -----'
       DO K1=1,10
        DO J1=1,10
         IF (IA(J1,K1) .GT. IB(J1,K1)) THEN
          IF (RA(J1,K1) .LT. RB(J1,K1)) THEN
           IF (DA(J1,K1) .NE. DB(J1,K1)) THEN
            CA(J1,K1) = CB(J1,K1) + CC(J1,K1)
           ELSE
            LA(J1,K1) = LB(J1,K1) .AND. LC(J1,K1)
           END IF
          ELSE
           IF (CDA(J1,K1) .EQ. CDB(J1,K1)) THEN
            CA(J1,K1) = CB(J1,K1) - CC(J1,K1)
           END IF
          END IF
         ELSE
          IF (LA(J1,K1)) THEN
           LB(J1,K1) = LC(J1,K1) .OR. LB(J1,K1)
          END IF
         END IF
        END DO
       END DO

       WRITE (6, *) '----- TEST NO.3 -----'
       DO J1=1,3
        DO K1=1,6,5
         IS1 = IS1 + IA(K1,J1)
         RS1 = MAX (RS1, RA(K1,J1))
         DA(K1,J1) = DB(K1,J1) * DC(K1,J1)
         IS1 = IS1 + IA(K1+1,J1)
         RS1 = MAX (RS1, RA(K1+1,J1))
         DA(K1+1,J1) = DB(K1+1,J1) * DC(K1+1,J1)
         IS1 = IS1 + IA(K1+2,J1)
         RS1 = MAX (RS1, RA(K1+2,J1))
         DA(K1+2,J1) = DB(K1+2,J1) * DC(K1+2,J1)
         IS1 = IS1 + IA(K1+3,J1)
         RS1 = MAX (RS1, RA(K1+3,J1))
         DA(K1+3,J1) = DB(K1+3,J1) * DC(K1+3,J1)
         IS1 = IS1 + IA(K1+4,J1)
         RS1 = MAX (RS1, RA(K1+4,J1))
         DA(K1+4,J1) = DB(K1+4,J1) * DC(K1+4,J1)
        END DO
       END DO


       WRITE (6, *) '----- TEST NO.4 -----'
       I4 = 0
       DO J1=1,4
        II1 = J1 * 2 - 2
        I4 = I4 + 1
        RA(J1,II1+1) = RB(J1,II1+1) + RC(J1,II1+1)
        I4 = I4 + 1
        RA(J1,II1+2) = RB(J1,II1+2) + RC(J1,II1+2)
       END DO


       WRITE (6, *) '----- TEST NO.5 -----'
       DO J=1,10
        DO K=1,10
         DA(K,J) = DB(K,J) + DC(K,J)
         GO TO 51
   52    CONTINUE
         CA(K,J) = CB(K,J) * CC(K,J)
        END DO
       END DO
       GO TO 53

   51  LA(K,J) = LB(K,J) .OR. LC(K,J)
       GO TO 52

   53  CONTINUE
       WRITE (6, *) '----- TEST NO.6 -----'
       DO J1=1,10
        DO K1=1,2
         WRITE (6, *) IA(J1,K1)
        END DO
       END DO
       DO K1=1,2
        DO J1=1,6,5
         DA(J1,K1) = DB(J1,K1) + DC(J1,K1)
         DA(J1+1,K1) = DB(J1+1,K1) + DC(J1+1,K1)
         DA(J1+2,K1) = DB(J1+2,K1) + DC(J1+2,K1)
         DA(J1+3,K1) = DB(J1+3,K1) + DC(J1+3,K1)
         DA(J1+4,K1) = DB(J1+4,K1) + DC(J1+4,K1)
         DC3 = CDA(J1,K1) * CDB(J1,K1)
         DC4 = CDA(J1+1,K1) * CDB(J1+1,K1)
         DC5 = CDA(J1+2,K1) * CDB(J1+2,K1)
         DC6 = CDA(J1+3,K1) * CDB(J1+3,K1)
         DC1 = CDA(J1+4,K1) * CDB(J1+4,K1)
         DC7 = CDC(J1,K1) + (1.,1.)
         DC8 = CDC(J1+1,K1) + (1.,1.)
         DC9 = CDC(J1+2,K1) + (1.,1.)
         DC10 = CDC(J1+3,K1) + (1.,1.)
         DC2 = CDC(J1+4,K1) + (1.,1.)
         DC11 = DC3 / DC7
         DC12 = DC4 / DC8
         DC13 = DC5 / DC9
         DC14 = DC6 / DC10
         DC15 = DC1 / DC2
         CDA(J1+4,K1) = DC15
         CDA(J1+3,K1) = DC14
         CDA(J1+2,K1) = DC13
         CDA(J1+1,K1) = DC12
         CDA(J1,K1) = DC11
        END DO
       END DO

       WRITE (6, *) 'IA  = ', IA
       WRITE (6, *) 'LA  = ', LA
       WRITE (6, 999) 'RA  = ', RA
       WRITE (6, 999) 'DA  = ', DA
       WRITE (6, 999) 'DC  = ', DC
       WRITE (6, *) 'IHA  = ', IHA
       WRITE (6, 999) 'QA  = ', QA
       WRITE (6, 999) 'CA  = ', CA
       WRITE (6, 999) 'CDA = ', CDA
       WRITE (6, 999) 'CQA = ', CQA
  999  FORMAT(A6,(10G20.10))

       STOP 
      END
