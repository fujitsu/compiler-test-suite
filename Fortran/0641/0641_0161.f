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

       INTEGER*4 IA3(10,5,2), IB3(10,5,2), IC3(10,5,2)
       LOGICAL*4 LA3(10,5,2), LB3(10,5,2), LC3(10,5,2)
       REAL RA3(10,5,2), RB3(10,5,2), RC3(10,5,2)
       REAL*8 DA3(10,5,2), DB3(10,5,2), DC3(10,5,2)
       COMPLEX*8 CA3(10,5,2), CB3(10,5,2), CC3(10,5,2)
       COMPLEX*16 CDA3(10,5,2), CDB3(10,5,2), CDC3(10,5,2)
       INTEGER N3, N2, N1
       PARAMETER (N3 = 10, N2 = 10, N1 = 10)
       INTEGER II12, II11, II10, II9, II8, II7, II6, II5, II4, II3, II2
     X   , II1
       REAL RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD1
       LOGICAL LL1

       DO I=1,6,5
        IA1(I) = 0
        IA1(I+1) = 0
        IA1(I+2) = 0
        IA1(I+3) = 0
        IA1(I+4) = 0
        IB1(I) = I + 3
        IB1(I+1) = I + 4
        IB1(I+2) = I + 5
        IB1(I+3) = I + 6
        IB1(I+4) = I + 7
        IC1(I) = I - 3
        IC1(I+1) = I - 2
        IC1(I+2) = I - 1
        IC1(I+3) = I
        IC1(I+4) = I + 1
        RA1(I) = 0.
        RA1(I+1) = 0.
        RA1(I+2) = 0.
        RA1(I+3) = 0.
        RA1(I+4) = 0.
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
       END DO


C$OMP PARALLEL SHARED (RA2,RB2,RC2,DA2,DB2,DC2,LA2,LB2,LC2,CA2,DA3,DB3,
C$OMP& DC3,CA3,CB3) PRIVATE (J,I,II1,II3,II4,II5,II6,II7)
C$OMP DO 
       DO J=1,10
        DO I=1,6,5
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
         RC2(I,J) = I - J
         RC2(I+1,J) = I - J + 1
         RC2(I+2,J) = I - J + 2
         RC2(I+3,J) = I - J + 3
         RC2(I+4,J) = I - J + 4
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
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J=1,5
        II1 = J * (-2)

        DO I=1,6,5
         DA3(I,J,1) = I + J - 1
         DA3(I+1,J,1) = I + J
         DA3(I+2,J,1) = I + J + 1
         DA3(I+3,J,1) = I + J + 2
         DA3(I+4,J,1) = I + J + 3
         DA3(I,J,2) = I + J - 2
         DA3(I+1,J,2) = I + J - 1
         DA3(I+2,J,2) = I + J
         DA3(I+3,J,2) = I + J + 1
         DA3(I+4,J,2) = I + J + 2
         DB3(I,J,1) = I * J
         DB3(I+1,J,1) = (I + 1) * J
         DB3(I+2,J,1) = (I + 2) * J
         DB3(I+3,J,1) = (I + 3) * J
         DB3(I+4,J,1) = (I + 4) * J
         II4 = I * J
         II5 = (I + 1) * J
         II6 = (I + 2) * J
         II7 = (I + 3) * J
         II3 = (I + 4) * J
         DB3(I,J,2) = II4 * 2
         DB3(I+1,J,2) = II5 * 2
         DB3(I+2,J,2) = II6 * 2
         DB3(I+3,J,2) = II7 * 2
         DB3(I+4,J,2) = II3 * 2
         DC3(I,J,1) = I - J
         DC3(I+1,J,1) = I - J + 1
         DC3(I+2,J,1) = I - J + 2
         DC3(I+3,J,1) = I - J + 3
         DC3(I+4,J,1) = I - J + 4
         DC3(I,J,2) = I + II1
         DC3(I+1,J,2) = I + II1 + 1
         DC3(I+2,J,2) = I + II1 + 2
         DC3(I+3,J,2) = I + II1 + 3
         DC3(I+4,J,2) = I + II1 + 4
         CA3(I,J,1) = I + J - 1
         CA3(I+1,J,1) = I + J
         CA3(I+2,J,1) = I + J + 1
         CA3(I+3,J,1) = I + J + 2
         CA3(I+4,J,1) = I + J + 3
         CA3(I,J,2) = I + J - 2
         CA3(I+1,J,2) = I + J - 1
         CA3(I+2,J,2) = I + J
         CA3(I+3,J,2) = I + J + 1
         CA3(I+4,J,2) = I + J + 2
         CB3(I,J,1) = I * J
         CB3(I+1,J,1) = (I + 1) * J
         CB3(I+2,J,1) = (I + 2) * J
         CB3(I+3,J,1) = (I + 3) * J
         CB3(I+4,J,1) = (I + 4) * J
         II4 = I * J
         II5 = (I + 1) * J
         II6 = (I + 2) * J
         II7 = (I + 3) * J
         II3 = (I + 4) * J
         CB3(I,J,2) = II4 * 2
         CB3(I+1,J,2) = II5 * 2
         CB3(I+2,J,2) = II6 * 2
         CB3(I+3,J,2) = II7 * 2
         CB3(I+4,J,2) = II3 * 2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       IS1 = 0
       RS1 = 0.
       DS1 = 0D0
       WRITE (6, *) '----- TEST NO.1 -----'
       DO I=1,10
        IF (LA1(I)) THEN
         IS1 = IS1 + IA1(I)
        ELSE
         RS1 = AMAX1 (RS1, RA1(I))
        END IF
        RA1(I) = FLOAT (I)
       END DO
       DO I=1,6,5
        DA2(I,1) = RA2(I,1) + I
        DA2(I+1,1) = 1 + RA2(I+1,1) + I
        DA2(I+2,1) = 2 + RA2(I+2,1) + I
        DA2(I+3,1) = 3 + RA2(I+3,1) + I
        DA2(I+4,1) = 4 + RA2(I+4,1) + I
        DA2(I,2) = RA2(I,2) + I
        DA2(I+1,2) = 1 + RA2(I+1,2) + I
        DA2(I+2,2) = 2 + RA2(I+2,2) + I
        DA2(I+3,2) = 3 + RA2(I+3,2) + I
        DA2(I+4,2) = 4 + RA2(I+4,2) + I
        DA2(I,3) = RA2(I,3) + I
        DA2(I+1,3) = 1 + RA2(I+1,3) + I
        DA2(I+2,3) = 2 + RA2(I+2,3) + I
        DA2(I+3,3) = 3 + RA2(I+3,3) + I
        DA2(I+4,3) = 4 + RA2(I+4,3) + I
        DA2(I,4) = RA2(I,4) + I
        DA2(I+1,4) = 1 + RA2(I+1,4) + I
        DA2(I+2,4) = 2 + RA2(I+2,4) + I
        DA2(I+3,4) = 3 + RA2(I+3,4) + I
        DA2(I+4,4) = 4 + RA2(I+4,4) + I
        RB2(I,1) = RC2(I,1) * 3.
        RB2(I+1,1) = RC2(I+1,1) * 3.
        RB2(I+2,1) = RC2(I+2,1) * 3.
        RB2(I+3,1) = RC2(I+3,1) * 3.
        RB2(I+4,1) = RC2(I+4,1) * 3.
        RB2(I,2) = RC2(I,2) * 3.
        RB2(I+1,2) = RC2(I+1,2) * 3.
        RB2(I+2,2) = RC2(I+2,2) * 3.
        RB2(I+3,2) = RC2(I+3,2) * 3.
        RB2(I+4,2) = RC2(I+4,2) * 3.
        RB2(I,3) = RC2(I,3) * 3.
        RB2(I+1,3) = RC2(I+1,3) * 3.
        RB2(I+2,3) = RC2(I+2,3) * 3.
        RB2(I+3,3) = RC2(I+3,3) * 3.
        RB2(I+4,3) = RC2(I+4,3) * 3.
        RB2(I,4) = RC2(I,4) * 3.
        RB2(I+1,4) = RC2(I+1,4) * 3.
        RB2(I+2,4) = RC2(I+2,4) * 3.
        RB2(I+3,4) = RC2(I+3,4) * 3.
        RB2(I+4,4) = RC2(I+4,4) * 3.
       END DO
       DO I=1,6,5
        DA2(I,5) = RA2(I,5) + I
        DA2(I+1,5) = 1 + RA2(I+1,5) + I
        DA2(I+2,5) = 2 + RA2(I+2,5) + I
        DA2(I+3,5) = 3 + RA2(I+3,5) + I
        DA2(I+4,5) = 4 + RA2(I+4,5) + I
        RB2(I,5) = RC2(I,5) * 3.
        RB2(I+1,5) = RC2(I+1,5) * 3.
        RB2(I+2,5) = RC2(I+2,5) * 3.
        RB2(I+3,5) = RC2(I+3,5) * 3.
        RB2(I+4,5) = RC2(I+4,5) * 3.
       END DO
       DO J=1,5
        II2 = IC1(J)
        DO I=1,6,5
         II8 = IA1(I) + II2
         IB1(I) = II8
         II2 = II8
         II9 = IA1(I+1) + II2
         IB1(I+1) = II9
         II2 = II9
         II10 = IA1(I+2) + II2
         IB1(I+2) = II10
         II2 = II10
         II11 = IA1(I+3) + II2
         IB1(I+3) = II11
         II2 = II11
         II12 = IA1(I+4) + II2
         IB1(I+4) = II12
         II2 = II12
        END DO
        IC1(J) = II2
        DO I=1,10
         IF (DA3(I,J,1) - 10D0) 37, 36, 38
   36    DB3(I,J,1) = DC3(I,J,1) - DA2(I,J)
         GO TO 39
   37    DC3(I,J,1) = RB2(I,J) + DFLOAT (IB1(I))
         GO TO 39
   38    CONTINUE
         RA2(I,J) = SQRT (ABS (RB2(I,J)))
         IF (LA2(I,J)) THEN
          LB2(I,J) = .NOT.LC2(I,J)
         END IF
   39    IF (DA3(I,J,2) - 10D0) 5, 4, 6
    4    DB3(I,J,2) = DC3(I,J,2) - DA2(I,J)
         GO TO 7
    5    DC3(I,J,2) = RB2(I,J) + DFLOAT (IB1(I))
         GO TO 7
    6    CONTINUE
         RA2(I,J) = SQRT (ABS (RB2(I,J)))
         IF (LA2(I,J)) THEN
          LB2(I,J) = .NOT.LC2(I,J)
         END IF
    7    CONTINUE
        END DO
       END DO
       DO J=1,5
        DO I=1,6,5
         RA2(I,J) = RB2(I,J) * 2.
         DS1 = DS1 + DA2(I,J)
         RA2(I+1,J) = RB2(I+1,J) * 2.
         DS1 = DS1 + DA2(I+1,J)
         RA2(I+2,J) = RB2(I+2,J) * 2.
         DS1 = DS1 + DA2(I+2,J)
         RA2(I+3,J) = RB2(I+3,J) * 2.
         DS1 = DS1 + DA2(I+3,J)
         RA2(I+4,J) = RB2(I+4,J) * 2.
         DS1 = DS1 + DA2(I+4,J)
        END DO
       END DO

       WRITE (6, *) 'IS1 = ', IS1
       WRITE (6, *) 'RS1 = ', RS1
       WRITE (6, *) 'RA1 = ', RA1
       WRITE (6, *) 'DA2 = ', DA2
       WRITE (6, *) 'RB2 = ', RB2
       WRITE (6, *) 'IB1 = ', IB1
       WRITE (6, *) 'DB3 = ', DB3
       WRITE (6, *) 'DC3 = ', DC3
       WRITE (6, *) 'RA2 = ', RA2
       WRITE (6, *) 'LB2 = ', LB2
       WRITE (6, *) 'IC1 = ', IC1
       WRITE (6, *) 'DS1 = ', DS1

       WRITE (6, *) '----- TEST NO.2 -----'
       DO I=1,6,5
        CA2(I,1) = IA1(I) + DA1(I)
        CA2(I+1,1) = IA1(I+1) + DA1(I+1)
        CA2(I+2,1) = IA1(I+2) + DA1(I+2)
        CA2(I+3,1) = IA1(I+3) + DA1(I+3)
        CA2(I+4,1) = IA1(I+4) + DA1(I+4)
        CA2(I,2) = IA1(I) + DA1(I)
        CA2(I+1,2) = IA1(I+1) + DA1(I+1)
        CA2(I+2,2) = IA1(I+2) + DA1(I+2)
        CA2(I+3,2) = IA1(I+3) + DA1(I+3)
        CA2(I+4,2) = IA1(I+4) + DA1(I+4)
        CA2(I,3) = IA1(I) + DA1(I)
        CA2(I+1,3) = IA1(I+1) + DA1(I+1)
        CA2(I+2,3) = IA1(I+2) + DA1(I+2)
        CA2(I+3,3) = IA1(I+3) + DA1(I+3)
        CA2(I+4,3) = IA1(I+4) + DA1(I+4)
        CA2(I,4) = IA1(I) + DA1(I)
        CA2(I+1,4) = IA1(I+1) + DA1(I+1)
        CA2(I+2,4) = IA1(I+2) + DA1(I+2)
        CA2(I+3,4) = IA1(I+3) + DA1(I+3)
        CA2(I+4,4) = IA1(I+4) + DA1(I+4)
       END DO
       DO I=1,6,5
        CA2(I,5) = IA1(I) + DA1(I)
        CA2(I+1,5) = IA1(I+1) + DA1(I+1)
        CA2(I+2,5) = IA1(I+2) + DA1(I+2)
        CA2(I+3,5) = IA1(I+3) + DA1(I+3)
        CA2(I+4,5) = IA1(I+4) + DA1(I+4)
       END DO
C$OMP PARALLEL SHARED (DB2,DA2,DA1,IA1,LC2,DC2,LA2,DA3,DB3,CA3,CB3,LB2,
C$OMP& CA2) PRIVATE (J,I,LL1)
C$OMP DO 
       DO J=1,5
        DO I=1,10
         DB2(I,J) = DA2(I,J) * 2. + DA1(I) + DFLOAT (IA1(I))
         LC2(I,J) = DB2(I,J) .EQ. DC2(I,J)
         LL1 = LA2(I,J)
         IF (LL1) THEN
          DA3(I,J,1) = DB3(I,J,1) + DB2(I,J)
          CA2(I,J) = CA2(I,J) - CB3(I,J,1) + CA3(I,J,1)
          LB2(I,J) = .NOT.LC2(I,J)
          DA3(I,J,2) = DB3(I,J,2) + DB2(I,J)
          CA2(I,J) = CA2(I,J) - CB3(I,J,2) + CA3(I,J,2)
          LB2(I,J) = .NOT.LC2(I,J)
         END IF
         IF (.NOT.LL1) THEN
          DA3(I,J,1) = DB3(I,J,1) + DB2(I,J)
          CA2(I,J) = CA2(I,J) - CB3(I,J,1) + CA3(I,J,1)
          DA3(I,J,2) = DB3(I,J,2) + DB2(I,J)
          CA2(I,J) = CA2(I,J) - CB3(I,J,2) + CA3(I,J,2)
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,6,5
        IA1(I) = -I
        IA1(I+1) = -1 - I
        IA1(I+2) = -2 - I
        IA1(I+3) = -3 - I
        IA1(I+4) = -4 - I
       END DO
       DO I=1,10
        IF (LA1(I)) THEN
         DA1(I) = DB1(I) * DC1(I)
        END IF
        DA1(I) = DFLOAT (IA1(I))
       END DO

       WRITE (6, *) 'CA2 = ', CA2
       WRITE (6, *) 'DB2 = ', DB2
       WRITE (6, *) 'LC2 = ', LC2
       WRITE (6, *) 'DA3 = ', DA3
       WRITE (6, *) 'CA2 = ', CA2
       WRITE (6, *) 'LB2 = ', LB2
       WRITE (6, *) 'DA1 = ', DA1
       WRITE (6, *) 'IA1 = ', IA1

       WRITE (6, *) '----- TEST NO.3 -----'
       DO I=1,6,5
        RA1(I) = FLOAT (I)
        RA1(I+1) = FLOAT (I + 1)
        RA1(I+2) = FLOAT (I + 2)
        RA1(I+3) = FLOAT (I + 3)
        RA1(I+4) = FLOAT (I + 4)
        DA1(I) = DFLOAT (I)
        DA1(I+1) = DFLOAT (I + 1)
        DA1(I+2) = DFLOAT (I + 2)
        DA1(I+3) = DFLOAT (I + 3)
        DA1(I+4) = DFLOAT (I + 4)
        IA1(I) = -I
        IA1(I+1) = -1 - I
        IA1(I+2) = -2 - I
        IA1(I+3) = -3 - I
        IA1(I+4) = -4 - I
       END DO
       DO J=1,2
        DO I=1,10
         IF (LC2(I,J)) THEN
          RR1 = SQRT (ABS (RB2(I,J)))
          RR2 = RA1(I)
          RR3 = RA2(I,J)
          DD1 = DB2(I,J)
          DA3(I,J,1) = DA3(I,J,1) + DB3(I,J,1)
          RR3 = RR3 + RR2 + RR1
          DS1 = DS1 + DD1
          DA3(I,J,2) = DA3(I,J,2) + DB3(I,J,2)
          RR3 = RR3 + RR2 + RR1
          DS1 = DS1 + DD1
          RA2(I,J) = RR3
         ELSE
          RR4 = SQRT (ABS (RB2(I,J)))
          RR5 = RA1(I)
          RR6 = RA2(I,J)
          DA3(I,J,1) = DA3(I,J,1) + DB3(I,J,1)
          RR6 = RR6 + RR5 + RR4
          DA3(I,J,2) = DA3(I,J,2) + DB3(I,J,2)
          RR6 = RR6 + RR5 + RR4
          RA2(I,J) = RR6
         END IF
         DB2(I,J) = DB2(I,J) * 2. + DA1(I)
         RA2(I,J) = RA1(I)
         LC2(I,J) = DB2(I,J) .GT. DC2(I,J)
        END DO
       END DO
       DO I=1,10
        RS1 = AMAX1 (RS1, RA1(I))
        IF (LA1(I)) THEN
         DA1(I) = DB1(I) * DC1(I)
        END IF
        DA1(I) = DFLOAT (IA1(I))
       END DO

       WRITE (6, *) 'DA1 = ', DA1
       WRITE (6, *) 'DS1 = ', DS1
       WRITE (6, *) 'RS1 = ', RS1
       WRITE (6, *) 'DA2 = ', DA2
       WRITE (6, *) 'RB2 = ', RB2
       WRITE (6, *) 'IB1 = ', IB1
       WRITE (6, *) 'IS1 = ', IS1
       WRITE (6, *) 'DB3 = ', DB3
       WRITE (6, *) 'DC3 = ', DC3
       WRITE (6, *) 'RA2 = ', RA2
       WRITE (6, *) 'LB2 = ', LB2
       WRITE (6, *) 'IA1 = ', IA1

       STOP 
      END
 
 
 
 
 
