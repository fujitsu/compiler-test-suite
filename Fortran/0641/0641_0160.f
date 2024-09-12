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
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL4, LL3, LL2, LL1

       DS1 = 0D0
       RS1 = 0.
       IS1 = 0

       DO I=1,6,5
        IA1(I) = 0
        IA1(I+1) = 0
        IA1(I+2) = 0
        IA1(I+3) = 0
        IA1(I+4) = 0
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


C$OMP PARALLEL SHARED (RA2,RB2,RC2,DA2,DB2,DC2,LA2,LB2,LC2,CA2) 
C$OMP& PRIVATE (J,I)
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
C$OMP END PARALLEL 


       WRITE (6, 9999) '----- TEST NO.1 -----'
       DO I=1,6,5
        II2 = I
        II3 = I + 1
        II4 = I + 2
        II5 = I + 3
        II6 = I + 4
        DA1(I) = DFLOAT (II2)
        DA1(I+1) = DFLOAT (II3)
        DA1(I+2) = DFLOAT (II4)
        DA1(I+3) = DFLOAT (II5)
        DA1(I+4) = DFLOAT (II6)
        IA1(I+4) = II6
        IA1(I+3) = II5
        IA1(I+2) = II4
        IA1(I+1) = II3
        IA1(I) = II2
       END DO
       DO I=1,10
        IF (LA1(I)) THEN
         DA1(I) = DB1(I) * DC1(I)
        END IF
       END DO
       DO J=1,7,4
        DO I=1,6,5
         CA2(I,J) = IA1(I) + DA1(I)
         CA2(I+1,J) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J) = IA1(I+4) + DA1(I+4)
         CA2(I,J+1) = IA1(I) + DA1(I)
         CA2(I+1,J+1) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J+1) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J+1) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J+1) = IA1(I+4) + DA1(I+4)
         CA2(I,J+2) = IA1(I) + DA1(I)
         CA2(I+1,J+2) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J+2) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J+2) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J+2) = IA1(I+4) + DA1(I+4)
         CA2(I,J+3) = IA1(I) + DA1(I)
         CA2(I+1,J+3) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J+3) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J+3) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J+3) = IA1(I+4) + DA1(I+4)
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         CA2(I,J) = IA1(I) + DA1(I)
         CA2(I+1,J) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J) = IA1(I+4) + DA1(I+4)
        END DO
       END DO
C$OMP PARALLEL SHARED (DB2,DA1,RA2,LC2,DC2,LA2,RB2,DA2,LB2) PRIVATE (DD1
C$OMP& ,RR1,LL2,DD2,RR2,K,J,I,LL1)
C$OMP DO 
       DO J=1,10
        DO I=1,10
         DB2(I,J) = DB2(I,J) * 2. + DA1(I)
         RA2(I,J) = 0.
         LC2(I,J) = DB2(I,J) .GT. DC2(I,J)
         LL1 = LA2(I,J)
         IF (LL1) THEN
          DD1 = DB2(I,J) + DC2(I,J)
          RR1 = SQRT (RB2(I,J))
          LL2 = .NOT.LC2(I,J)
          DA2(I,J) = DD1
          RA2(I,J) = RR1
          LB2(I,J) = LL2
         END IF
         IF (.NOT.LL1) THEN
          DD2 = DB2(I,J) + DC2(I,J)
          RR2 = SQRT (RB2(I,J))
          DA2(I,J) = DD2
          RA2(I,J) = RR2
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 9999) 'IA1 = ', IA1
       WRITE (6, 9999) 'DA1 = ', DA1
       WRITE (6, 9999) 'CA2 = ', CA2
       WRITE (6, 9999) 'DB2 = ', DB2
       WRITE (6, 9999) 'RA2 = ', RA2
       WRITE (6, 9999) 'LC2 = ', LC2
       WRITE (6, 9999) 'DA2 = ', DA2
       WRITE (6, 9999) 'LB2 = ', LB2

       WRITE (6, 9999) '----- TEST NO.2 -----'
C$OMP PARALLEL SHARED (LA2,DB2,DC2,RB2,LC2,DA2,RA2,LB2,DA1,RC2) 
C$OMP& PRIVATE (DD3,RR3,LL3,DD4,RR4,K,J,I)
C$OMP DO 
       DO J=1,10
        DO I=1,10
         IF (LA2(I,J)) THEN
          DD3 = DB2(I,J) + DC2(I,J)
          RR3 = SQRT (RB2(I,J))
          LL3 = .NOT.LC2(I,J)
          DA2(I,J) = DD3
          RA2(I,J) = RR3
          LB2(I,J) = LL3
         ELSE
          DD4 = DB2(I,J) + DC2(I,J)
          RR4 = SQRT (RB2(I,J))
          DA2(I,J) = DD4
          RA2(I,J) = RR4
         END IF
         DB2(I,J) = DA2(I,J) * 2. + DA1(I)
         RA2(I,J) = -RC2(I,J)
         LC2(I,J) = DB2(I,J) .EQ. DC2(I,J)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J=1,7,4
        DO I=1,6,5
         CA2(I,J) = IA1(I) + DA1(I)
         CA2(I+1,J) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J) = IA1(I+4) + DA1(I+4)
         CA2(I,J+1) = IA1(I) + DA1(I)
         CA2(I+1,J+1) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J+1) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J+1) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J+1) = IA1(I+4) + DA1(I+4)
         CA2(I,J+2) = IA1(I) + DA1(I)
         CA2(I+1,J+2) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J+2) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J+2) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J+2) = IA1(I+4) + DA1(I+4)
         CA2(I,J+3) = IA1(I) + DA1(I)
         CA2(I+1,J+3) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J+3) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J+3) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J+3) = IA1(I+4) + DA1(I+4)
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         CA2(I,J) = IA1(I) + DA1(I)
         CA2(I+1,J) = IA1(I+1) + DA1(I+1)
         CA2(I+2,J) = IA1(I+2) + DA1(I+2)
         CA2(I+3,J) = IA1(I+3) + DA1(I+3)
         CA2(I+4,J) = IA1(I+4) + DA1(I+4)
        END DO
       END DO
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

       WRITE (6, 9999) 'IA1 = ', IA1
       WRITE (6, 9999) 'DA1 = ', DA1
       WRITE (6, 9999) 'CA2 = ', CA2
       WRITE (6, 9999) 'DB2 = ', DB2
       WRITE (6, 9999) 'RA2 = ', RA2
       WRITE (6, 9999) 'LC2 = ', LC2
       WRITE (6, 9999) 'DA2 = ', DA2
       WRITE (6, 9999) 'LB2 = ', LB2

       WRITE (6, 9999) '----- TEST NO.3 -----'
       DO I=1,6,5
        DA1(I) = DFLOAT (I)
        DA1(I+1) = DFLOAT (I + 1)
        DA1(I+2) = DFLOAT (I + 2)
        DA1(I+3) = DFLOAT (I + 3)
        DA1(I+4) = DFLOAT (I + 4)
       END DO
       DO J=1,7,4
        DO I=1,6,5
         DA2(I,J) = RA2(I,J) + I
         DA2(I+1,J) = 1 + RA2(I+1,J) + I
         DA2(I+2,J) = 2 + RA2(I+2,J) + I
         DA2(I+3,J) = 3 + RA2(I+3,J) + I
         DA2(I+4,J) = 4 + RA2(I+4,J) + I
         DA2(I,J+1) = RA2(I,J+1) + I
         DA2(I+1,J+1) = 1 + RA2(I+1,J+1) + I
         DA2(I+2,J+1) = 2 + RA2(I+2,J+1) + I
         DA2(I+3,J+1) = 3 + RA2(I+3,J+1) + I
         DA2(I+4,J+1) = 4 + RA2(I+4,J+1) + I
         DA2(I,J+2) = RA2(I,J+2) + I
         DA2(I+1,J+2) = 1 + RA2(I+1,J+2) + I
         DA2(I+2,J+2) = 2 + RA2(I+2,J+2) + I
         DA2(I+3,J+2) = 3 + RA2(I+3,J+2) + I
         DA2(I+4,J+2) = 4 + RA2(I+4,J+2) + I
         DA2(I,J+3) = RA2(I,J+3) + I
         DA2(I+1,J+3) = 1 + RA2(I+1,J+3) + I
         DA2(I+2,J+3) = 2 + RA2(I+2,J+3) + I
         DA2(I+3,J+3) = 3 + RA2(I+3,J+3) + I
         DA2(I+4,J+3) = 4 + RA2(I+4,J+3) + I
         RB2(I,J) = RC2(I,J) * 3.
         RB2(I+1,J) = RC2(I+1,J) * 3.
         RB2(I+2,J) = RC2(I+2,J) * 3.
         RB2(I+3,J) = RC2(I+3,J) * 3.
         RB2(I+4,J) = RC2(I+4,J) * 3.
         RB2(I,J+1) = RC2(I,J+1) * 3.
         RB2(I+1,J+1) = RC2(I+1,J+1) * 3.
         RB2(I+2,J+1) = RC2(I+2,J+1) * 3.
         RB2(I+3,J+1) = RC2(I+3,J+1) * 3.
         RB2(I+4,J+1) = RC2(I+4,J+1) * 3.
         RB2(I,J+2) = RC2(I,J+2) * 3.
         RB2(I+1,J+2) = RC2(I+1,J+2) * 3.
         RB2(I+2,J+2) = RC2(I+2,J+2) * 3.
         RB2(I+3,J+2) = RC2(I+3,J+2) * 3.
         RB2(I+4,J+2) = RC2(I+4,J+2) * 3.
         RB2(I,J+3) = RC2(I,J+3) * 3.
         RB2(I+1,J+3) = RC2(I+1,J+3) * 3.
         RB2(I+2,J+3) = RC2(I+2,J+3) * 3.
         RB2(I+3,J+3) = RC2(I+3,J+3) * 3.
         RB2(I+4,J+3) = RC2(I+4,J+3) * 3.
        END DO
       END DO
       DO J=9,10,1
        DO I=1,6,5
         DA2(I,J) = RA2(I,J) + I
         DA2(I+1,J) = 1 + RA2(I+1,J) + I
         DA2(I+2,J) = 2 + RA2(I+2,J) + I
         DA2(I+3,J) = 3 + RA2(I+3,J) + I
         DA2(I+4,J) = 4 + RA2(I+4,J) + I
         RB2(I,J) = RC2(I,J) * 3.
         RB2(I+1,J) = RC2(I+1,J) * 3.
         RB2(I+2,J) = RC2(I+2,J) * 3.
         RB2(I+3,J) = RC2(I+3,J) * 3.
         RB2(I+4,J) = RC2(I+4,J) * 3.
        END DO
       END DO
       DO J=1,10
        II1 = IC1(J)
        DO I=1,6,5
         II7 = IA1(I) + II1
         IS1 = IS1 + II7
         CA2(I,J) = IA1(I) + DA1(I)
         II8 = IA1(I+1) + II1
         IS1 = IS1 + II8
         CA2(I+1,J) = IA1(I+1) + DA1(I+1)
         II9 = IA1(I+2) + II1
         IS1 = IS1 + II9
         CA2(I+2,J) = IA1(I+2) + DA1(I+2)
         II10 = IA1(I+3) + II1
         IS1 = IS1 + II10
         CA2(I+3,J) = IA1(I+3) + DA1(I+3)
         II11 = IA1(I+4) + II1
         IS1 = IS1 + II11
         CA2(I+4,J) = IA1(I+4) + DA1(I+4)
        END DO
       END DO
       DO I=1,6,5
        DS1 = DS1 + DA1(I)
        RS1 = AMAX1 (RS1, RA1(I))
        IA1(I) = -I
        DS1 = DS1 + DA1(I+1)
        RS1 = AMAX1 (RS1, RA1(I+1))
        IA1(I+1) = -1 - I
        DS1 = DS1 + DA1(I+2)
        RS1 = AMAX1 (RS1, RA1(I+2))
        IA1(I+2) = -2 - I
        DS1 = DS1 + DA1(I+3)
        RS1 = AMAX1 (RS1, RA1(I+3))
        IA1(I+3) = -3 - I
        DS1 = DS1 + DA1(I+4)
        RS1 = AMAX1 (RS1, RA1(I+4))
        IA1(I+4) = -4 - I
       END DO
C$OMP PARALLEL SHARED (LA2,DB2,DC2,RB2,LC2,DA2,RA2,LB2,DA1,RC2) 
C$OMP& PRIVATE (DD5,RR5,LL4,DD6,RR6,K,J,I)
C$OMP DO 
       DO J=1,10
        DO I=1,10
         IF (LA2(I,J)) THEN
          DD5 = DB2(I,J) + DC2(I,J)
          RR5 = SQRT (ABS (RB2(I,J)))
          LL4 = .NOT.LC2(I,J)
          DA2(I,J) = DD5
          RA2(I,J) = RR5
          LB2(I,J) = LL4
         ELSE
          DD6 = DB2(I,J) + DC2(I,J)
          RR6 = SQRT (ABS (RB2(I,J)))
          DA2(I,J) = DD6
          RA2(I,J) = RR6
         END IF
         DB2(I,J) = DA2(I,J) * 2. + DA1(I)
         RA2(I,J) = -RC2(I,J)
         LC2(I,J) = DB2(I,J) .EQ. DC2(I,J)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,10
        IF (LA1(I)) THEN
         DA1(I) = DB1(I) * DC1(I)
        END IF
        DA1(I) = DFLOAT (IA1(I))
       END DO

       WRITE (6, 9999) 'IS1 = ', IS1
       WRITE (6, 9999) 'RS1 = ', RS1
       WRITE (6, 9999) 'DS1 = ', DS1
       WRITE (6, 9999) 'IA1 = ', IA1
       WRITE (6, 9999) 'DA1 = ', DA1
       WRITE (6, 9999) 'CA2 = ', CA2
       WRITE (6, 9999) 'DB2 = ', DB2
       WRITE (6, 9999) 'RA2 = ', RA2
       WRITE (6, 9999) 'LC2 = ', LC2
       WRITE (6, 9999) 'DA2 = ', DA2
       WRITE (6, 9999) 'LB2 = ', LB2
 9999  FORMAT(A,(G20.6))

       STOP 
      END
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
