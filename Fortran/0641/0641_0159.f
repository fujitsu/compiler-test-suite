      PROGRAM MAIN

       INTEGER*4 IA1(10), IB1(10), IC1(10), IS1
       INTEGER*2 IHA1(10), IHB1(10), IHC1(10), IHS1
       LOGICAL*4 LA1(10), LB1(10), LC1(10), LS1
       LOGICAL*1 LBA1(10), LBB1(10), LBC1(10), LBS1
       REAL RA1(10), RB1(10), RC1(10), RS1
       REAL*8 DA1(10), DB1(10), DC1(10), DS1
       REAL*8 QA1(10), QB1(10), QC1(10), QS1
       COMPLEX*8 CA1(10), CB1(10), CC1(10), CS1
       COMPLEX*16 CDA1(10), CDB1(10), CDC1(10), CDS1
       COMPLEX*16 CQA1(10), CQB1(10), CQC1(10), CQS1

       INTEGER*4 IA2(10,10), IB2(10,10), IC2(10,10)
       INTEGER*2 IHA2(10,10), IHB2(10,10), IHC2(10,10)
       LOGICAL*4 LA2(10,10), LB2(10,10), LC2(10,10)
       LOGICAL*1 LBA2(10,10), LBB2(10,10), LBC2(10,10)
       REAL RA2(10,10), RB2(10,10), RC2(10,10)
       REAL*8 DA2(10,10), DB2(10,10), DC2(10,10)
       REAL*8 QA2(10,10), QB2(10,10), QC2(10,10)
       COMPLEX*8 CA2(10,10), CB2(10,10), CC2(10,10)
       COMPLEX*16 CDA2(10,10), CDB2(10,10), CDC2(10,10)
       COMPLEX*16 CQA2(10,10), CQB2(10,10), CQC2(10,10)
       INTEGER N3, N2, N1
       PARAMETER (N3 = 10, N2 = 10, N1 = 10)
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       LOGICAL LL1

       DS1 = 0D0

       DO I=1,6,5
        IA1(I) = 0
        IA1(I+1) = 0
        IA1(I+2) = 0
        IA1(I+3) = 0
        IA1(I+4) = 0
        RA1(I) = 0.
        RA1(I+1) = 0.
        RA1(I+2) = 0.
        RA1(I+3) = 0.
        RA1(I+4) = 0.
        RB1(I) = I + 3
        RB1(I+1) = I + 4
        RB1(I+2) = I + 5
        RB1(I+3) = I + 6
        RB1(I+4) = I + 7
        DA1(I) = 0D0
        DA1(I+1) = 0D0
        DA1(I+2) = 0D0
        DA1(I+3) = 0D0
        DA1(I+4) = 0D0
        DB1(I) = I + 3
        DB1(I+1) = I + 4
        DB1(I+2) = I + 5
        DB1(I+3) = I + 6
        DB1(I+4) = I + 7
        DC1(I) = I - 3
        DC1(I+1) = I - 2
        DC1(I+2) = I - 1
        DC1(I+3) = I
        DC1(I+4) = I + 1
        LA1(I) = .FALSE.
        LA1(I+1) = .FALSE.
        LA1(I+2) = .FALSE.
        LA1(I+3) = .FALSE.
        LA1(I+4) = .FALSE.
        LB1(I) = .TRUE.
        LB1(I+1) = .TRUE.
        LB1(I+2) = .TRUE.
        LB1(I+3) = .TRUE.
        LB1(I+4) = .TRUE.
        LC1(I) = .FALSE.
        LC1(I+1) = .FALSE.
        LC1(I+2) = .FALSE.
        LC1(I+3) = .FALSE.
        LC1(I+4) = .FALSE.
        CA1(I) = (0., 0.)
        CA1(I+1) = (0., 0.)
        CA1(I+2) = (0., 0.)
        CA1(I+3) = (0., 0.)
        CA1(I+4) = (0., 0.)
        CB1(I) = I - 1
        CB1(I+1) = I
        CB1(I+2) = I + 1
        CB1(I+3) = I + 2
        CB1(I+4) = I + 3
        CC1(I) = I + 1
        CC1(I+1) = I + 2
        CC1(I+2) = I + 3
        CC1(I+3) = I + 4
        CC1(I+4) = I + 5
        CDA1(I) = 0
        CDA1(I+1) = 0
        CDA1(I+2) = 0
        CDA1(I+3) = 0
        CDA1(I+4) = 0
        CDB1(I) = I - 1
        CDB1(I+1) = I
        CDB1(I+2) = I + 1
        CDB1(I+3) = I + 2
        CDB1(I+4) = I + 3
       END DO


C$OMP PARALLEL SHARED (IA2,IB2,RA2,RB2,DA2,DB2,DC2,LA2,LB2,LC2,CA2,CDA2,
C$OMP& CDB2) PRIVATE (J,I)
C$OMP DO 
       DO J=1,10
        DO I=1,6,5
         IA2(I,J) = 0
         IA2(I+1,J) = 0
         IA2(I+2,J) = 0
         IA2(I+3,J) = 0
         IA2(I+4,J) = 0
         IB2(I,J) = I + J
         IB2(I+1,J) = I + J + 1
         IB2(I+2,J) = I + J + 2
         IB2(I+3,J) = I + J + 3
         IB2(I+4,J) = I + J + 4
         RA2(I,J) = 0.
         RA2(I+1,J) = 0.
         RA2(I+2,J) = 0.
         RA2(I+3,J) = 0.
         RA2(I+4,J) = 0.
         RB2(I,J) = I + J
         RB2(I+1,J) = I + J + 1
         RB2(I+2,J) = I + J + 2
         RB2(I+3,J) = I + J + 3
         RB2(I+4,J) = I + J + 4
         DA2(I,J) = 0D0
         DA2(I+1,J) = 0D0
         DA2(I+2,J) = 0D0
         DA2(I+3,J) = 0D0
         DA2(I+4,J) = 0D0
         DB2(I,J) = I + J
         DB2(I+1,J) = I + J + 1
         DB2(I+2,J) = I + J + 2
         DB2(I+3,J) = I + J + 3
         DB2(I+4,J) = I + J + 4
         DC2(I,J) = I - J
         DC2(I+1,J) = I - J + 1
         DC2(I+2,J) = I - J + 2
         DC2(I+3,J) = I - J + 3
         DC2(I+4,J) = I - J + 4
         LA2(I,J) = .FALSE.
         LA2(I+1,J) = .FALSE.
         LA2(I+2,J) = .FALSE.
         LA2(I+3,J) = .FALSE.
         LA2(I+4,J) = .FALSE.
         LB2(I,J) = .TRUE.
         LB2(I+1,J) = .TRUE.
         LB2(I+2,J) = .TRUE.
         LB2(I+3,J) = .TRUE.
         LB2(I+4,J) = .TRUE.
         LC2(I,J) = .FALSE.
         LC2(I+1,J) = .FALSE.
         LC2(I+2,J) = .FALSE.
         LC2(I+3,J) = .FALSE.
         LC2(I+4,J) = .FALSE.
         CA2(I,J) = (0., 0.)
         CA2(I+1,J) = (0., 0.)
         CA2(I+2,J) = (0., 0.)
         CA2(I+3,J) = (0., 0.)
         CA2(I+4,J) = (0., 0.)
         CDA2(I,J) = 0
         CDA2(I+1,J) = 0
         CDA2(I+2,J) = 0
         CDA2(I+3,J) = 0
         CDA2(I+4,J) = 0
         CDB2(I,J) = I - 1
         CDB2(I+1,J) = I
         CDB2(I+2,J) = I + 1
         CDB2(I+3,J) = I + 2
         CDB2(I+4,J) = I + 3
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 



       WRITE (6, *) '----- TEST NO.1 -----'
       DD1 = DB1(5)
       DO J=1,6,5
        IA1(J) = J
        RA1(J) = FLOAT (IA1(J)) + RB1(J)
        DD1 = DD1 + DC1(J)
        IA1(J+1) = J + 1
        RA1(J+1) = FLOAT (IA1(J+1)) + RB1(J+1)
        DD1 = DD1 + DC1(J+1)
        IA1(J+2) = J + 2
        RA1(J+2) = FLOAT (IA1(J+2)) + RB1(J+2)
        DD1 = DD1 + DC1(J+2)
        IA1(J+3) = J + 3
        RA1(J+3) = FLOAT (IA1(J+3)) + RB1(J+3)
        DD1 = DD1 + DC1(J+3)
        IA1(J+4) = J + 4
        RA1(J+4) = FLOAT (IA1(J+4)) + RB1(J+4)
        DD1 = DD1 + DC1(J+4)
       END DO
       DB1(5) = DD1
       DO K=1,5
        DO J=1,10
         IA2(J,K) = IB2(J,K) ** 3
         RA2(J,K) = SQRT (RB2(J,K))
         IF (LA2(J,K)) THEN
          LB2(J,K) = LC2(J,K) .AND. DA2(J,K) .GT. DB2(J,K)
          IF (LB2(J,K)) THEN
           CA2(J,K) = CDA2(J,K) + CDB2(J,K)
          END IF
         ELSE
          DA2(J,K) = DSIN (DC2(J,K))
         END IF
        END DO
       END DO

       WRITE (6, 999) 'IA1 = ', IA1
       WRITE (6, 999) 'RA1 = ', RA1
       WRITE (6, 999) 'DB1 = ', DB1
       WRITE (6, 999) 'IA2 = ', IA2
       WRITE (6, 999) 'RA2 = ', RA2
       WRITE (6, 999) 'LB2 = ', LB2
       WRITE (6, 999) 'CA2 = ', CA2
       WRITE (6, 999) 'DA2 = ', DA2


       WRITE (6, *) '----- TEST NO.2 -----'
       IF (LA2(5,5)) THEN
        DO J=1,6,5
         LB2(J,1) = LC2(J,1) .AND. DA2(J,1) .GT. DB2(J,1)
         LB2(J+1,1) = LC2(J+1,1) .AND. DA2(J+1,1) .GT. DB2(J+1,1)
         LB2(J+2,1) = LC2(J+2,1) .AND. DA2(J+2,1) .GT. DB2(J+2,1)
         LB2(J+3,1) = LC2(J+3,1) .AND. DA2(J+3,1) .GT. DB2(J+3,1)
         LB2(J+4,1) = LC2(J+4,1) .AND. DA2(J+4,1) .GT. DB2(J+4,1)
         LB2(J,2) = LC2(J,2) .AND. DA2(J,2) .GT. DB2(J,2)
         LB2(J+1,2) = LC2(J+1,2) .AND. DA2(J+1,2) .GT. DB2(J+1,2)
         LB2(J+2,2) = LC2(J+2,2) .AND. DA2(J+2,2) .GT. DB2(J+2,2)
         LB2(J+3,2) = LC2(J+3,2) .AND. DA2(J+3,2) .GT. DB2(J+3,2)
         LB2(J+4,2) = LC2(J+4,2) .AND. DA2(J+4,2) .GT. DB2(J+4,2)
         LB2(J,3) = LC2(J,3) .AND. DA2(J,3) .GT. DB2(J,3)
         LB2(J+1,3) = LC2(J+1,3) .AND. DA2(J+1,3) .GT. DB2(J+1,3)
         LB2(J+2,3) = LC2(J+2,3) .AND. DA2(J+2,3) .GT. DB2(J+2,3)
         LB2(J+3,3) = LC2(J+3,3) .AND. DA2(J+3,3) .GT. DB2(J+3,3)
         LB2(J+4,3) = LC2(J+4,3) .AND. DA2(J+4,3) .GT. DB2(J+4,3)
         RA2(J,1) = SQRT (RB2(J,1))
         RA2(J+1,1) = SQRT (RB2(J+1,1))
         RA2(J+2,1) = SQRT (RB2(J+2,1))
         RA2(J+3,1) = SQRT (RB2(J+3,1))
         RA2(J+4,1) = SQRT (RB2(J+4,1))
         RA2(J,2) = SQRT (RB2(J,2))
         RA2(J+1,2) = SQRT (RB2(J+1,2))
         RA2(J+2,2) = SQRT (RB2(J+2,2))
         RA2(J+3,2) = SQRT (RB2(J+3,2))
         RA2(J+4,2) = SQRT (RB2(J+4,2))
         RA2(J,3) = SQRT (RB2(J,3))
         RA2(J+1,3) = SQRT (RB2(J+1,3))
         RA2(J+2,3) = SQRT (RB2(J+2,3))
         RA2(J+3,3) = SQRT (RB2(J+3,3))
         RA2(J+4,3) = SQRT (RB2(J+4,3))
        END DO
        DO K=4,5,1
         DO J=1,6,5
          LB2(J,K) = LC2(J,K) .AND. DA2(J,K) .GT. DB2(J,K)
          LB2(J+1,K) = LC2(J+1,K) .AND. DA2(J+1,K) .GT. DB2(J+1,K)
          LB2(J+2,K) = LC2(J+2,K) .AND. DA2(J+2,K) .GT. DB2(J+2,K)
          LB2(J+3,K) = LC2(J+3,K) .AND. DA2(J+3,K) .GT. DB2(J+3,K)
          LB2(J+4,K) = LC2(J+4,K) .AND. DA2(J+4,K) .GT. DB2(J+4,K)
          RA2(J,K) = SQRT (RB2(J,K))
          RA2(J+1,K) = SQRT (RB2(J+1,K))
          RA2(J+2,K) = SQRT (RB2(J+2,K))
          RA2(J+3,K) = SQRT (RB2(J+3,K))
          RA2(J+4,K) = SQRT (RB2(J+4,K))
         END DO
        END DO
        DO K=1,5
         DO J=1,10
          IA2(J,K) = IB2(J,K) ** 3
          IF (LB2(J,K)) THEN
           CA2(J,K) = CDA2(J,K) + CDB2(J,K)
          END IF
         END DO
        END DO
        DD2 = DB1(5)
        DO J=1,6,5
         LA1(J) = .NOT.LB1(J)
         IA1(J) = J
         RA1(J) = FLOAT (IA1(J)) + RB1(J)
         DD2 = DD2 + DC1(J)
         LA1(J+1) = .NOT.LB1(J+1)
         IA1(J+1) = J + 1
         RA1(J+1) = FLOAT (IA1(J+1)) + RB1(J+1)
         DD2 = DD2 + DC1(J+1)
         LA1(J+2) = .NOT.LB1(J+2)
         IA1(J+2) = J + 2
         RA1(J+2) = FLOAT (IA1(J+2)) + RB1(J+2)
         DD2 = DD2 + DC1(J+2)
         LA1(J+3) = .NOT.LB1(J+3)
         IA1(J+3) = J + 3
         RA1(J+3) = FLOAT (IA1(J+3)) + RB1(J+3)
         DD2 = DD2 + DC1(J+3)
         LA1(J+4) = .NOT.LB1(J+4)
         IA1(J+4) = J + 4
         RA1(J+4) = FLOAT (IA1(J+4)) + RB1(J+4)
         DD2 = DD2 + DC1(J+4)
        END DO
        DB1(5) = DD2
       ELSE
        DO K=1,5
         DO J=1,6,5
          IA2(J,K) = IB2(J,K) ** 3
          IA2(J+1,K) = IB2(J+1,K) ** 3
          IA2(J+2,K) = IB2(J+2,K) ** 3
          IA2(J+3,K) = IB2(J+3,K) ** 3
          IA2(J+4,K) = IB2(J+4,K) ** 3
          DA2(J,K) = DSIN (DC2(J,K))
          DA2(J+1,K) = DSIN (DC2(J+1,K))
          DA2(J+2,K) = DSIN (DC2(J+2,K))
          DA2(J+3,K) = DSIN (DC2(J+3,K))
          DA2(J+4,K) = DSIN (DC2(J+4,K))
          RA2(J,K) = SQRT (RB2(J,K))
          RA2(J+1,K) = SQRT (RB2(J+1,K))
          RA2(J+2,K) = SQRT (RB2(J+2,K))
          RA2(J+3,K) = SQRT (RB2(J+3,K))
          RA2(J+4,K) = SQRT (RB2(J+4,K))
         END DO
        END DO
        DD3 = DB1(5)
        DO J=1,6,5
         LA1(J) = .NOT.LB1(J)
         IA1(J) = J
         RA1(J) = FLOAT (IA1(J)) + RB1(J)
         DD3 = DD3 + DC1(J)
         LA1(J+1) = .NOT.LB1(J+1)
         IA1(J+1) = J + 1
         RA1(J+1) = FLOAT (IA1(J+1)) + RB1(J+1)
         DD3 = DD3 + DC1(J+1)
         LA1(J+2) = .NOT.LB1(J+2)
         IA1(J+2) = J + 2
         RA1(J+2) = FLOAT (IA1(J+2)) + RB1(J+2)
         DD3 = DD3 + DC1(J+2)
         LA1(J+3) = .NOT.LB1(J+3)
         IA1(J+3) = J + 3
         RA1(J+3) = FLOAT (IA1(J+3)) + RB1(J+3)
         DD3 = DD3 + DC1(J+3)
         LA1(J+4) = .NOT.LB1(J+4)
         IA1(J+4) = J + 4
         RA1(J+4) = FLOAT (IA1(J+4)) + RB1(J+4)
         DD3 = DD3 + DC1(J+4)
        END DO
        DB1(5) = DD3
       END IF

       WRITE (6, 999) 'IA2 = ', IA2
       WRITE (6, 999) 'RA2 = ', RA2
       WRITE (6, 999) 'LB2 = ', LB2
       WRITE (6, 999) 'CA2 = ', CA2
       WRITE (6, 999) 'DA2 = ', DA2
       WRITE (6, 999) 'LA1 = ', LA1
       WRITE (6, 999) 'IA1 = ', IA1
       WRITE (6, 999) 'RA1 = ', RA1
       WRITE (6, 999) 'DB1 = ', DB1


       WRITE (6, *) '----- TEST NO.3 -----'
       DO J=1,10
        CA1(J) = CB1(J) * CC1(J)
        CDA1(J) = CDB1(J)
        IF (LC1(J)) THEN
         DS1 = DS1 + DA1(J)
        END IF
        LL1 = LB1(J)
        IF (LL1) THEN
         IA2(J,1) = IB2(J,1) ** 3
         IA2(J,2) = IB2(J,2) ** 3
         IA2(J,3) = IB2(J,3) ** 3
         IA2(J,4) = IB2(J,4) ** 3
         IA2(J,5) = IB2(J,5) ** 3
         LB2(J,1) = .NOT.LC2(J,1)
         LB2(J,2) = .NOT.LC2(J,2)
         LB2(J,3) = .NOT.LC2(J,3)
         LB2(J,4) = .NOT.LC2(J,4)
         LB2(J,5) = .NOT.LC2(J,5)
         RA2(J,1) = SQRT (RB2(J,1))
         RA2(J,2) = SQRT (RB2(J,2))
         RA2(J,3) = SQRT (RB2(J,3))
         RA2(J,4) = SQRT (RB2(J,4))
         RA2(J,5) = SQRT (RB2(J,5))
        END IF
        IF (.NOT.LL1) THEN
         DO K=1,5
          IA2(J,K) = IB2(J,K) ** 3
          DA2(J,K) = DSIN (DC2(J,K))
          IF (LB2(J,K)) THEN
           CDA2(J,K) = CDA2(J,K) / CDB2(J,K)
          END IF
          RA2(J,K) = SQRT (RB2(J,K))
         END DO
        END IF
       END DO
       DD4 = DB1(5)
       DO J=1,6,5
        LA1(J) = .FALSE.
        IA1(J) = J
        RA1(J) = FLOAT (IA1(J)) + RB1(J)
        DD4 = DD4 + DC1(J)
        LA1(J+1) = .FALSE.
        IA1(J+1) = J + 1
        RA1(J+1) = FLOAT (IA1(J+1)) + RB1(J+1)
        DD4 = DD4 + DC1(J+1)
        LA1(J+2) = .FALSE.
        IA1(J+2) = J + 2
        RA1(J+2) = FLOAT (IA1(J+2)) + RB1(J+2)
        DD4 = DD4 + DC1(J+2)
        LA1(J+3) = .FALSE.
        IA1(J+3) = J + 3
        RA1(J+3) = FLOAT (IA1(J+3)) + RB1(J+3)
        DD4 = DD4 + DC1(J+3)
        LA1(J+4) = .FALSE.
        IA1(J+4) = J + 4
        RA1(J+4) = FLOAT (IA1(J+4)) + RB1(J+4)
        DD4 = DD4 + DC1(J+4)
       END DO
       DB1(5) = DD4

       WRITE (6, 999) 'CA1 = ', CA1
       WRITE (6, 999) 'CDA1 =', CDA1
       WRITE (6, 999) 'DS1 = ', DS1
       WRITE (6, 999) 'IA2 = ', IA2
       WRITE (6, 999) 'RA2 = ', RA2
       WRITE (6, 999) 'LB2 = ', LB2
       WRITE (6, 999) 'DA2 = ', DA2
       WRITE (6, 999) 'CDA2 =', CDA2
       WRITE (6, 999) 'RA2 = ', RA2
       WRITE (6, 999) 'LA1 = ', LA1
       WRITE (6, 999) 'IA1 = ', IA1
       WRITE (6, 999) 'RA1 = ', RA1
       WRITE (6, 999) 'DB1 = ', DB1
  999  FORMAT(A6,(10G20.6))

       STOP 
      END
 
 
 
 
 
 
 
 
 
 
 
 
 
