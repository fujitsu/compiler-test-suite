      PROGRAM MAIN

       INTEGER*4 IA1(10), IB1(10), IC1(10), IS1
       INTEGER*2 IHA1(10), IHB1(10), IHC1(10)
       LOGICAL*4 LA1(10), LB1(10), LC1(10)
       LOGICAL*1 LBA1(10), LBB1(10), LBC1(10)
       REAL RA1(10), RB1(10), RC1(10), RS1
       REAL*8 DA1(10), DB1(10), DC1(10), DS1
       REAL*8 QA1(10), QB1(10), QC1(10)
       COMPLEX*8 CA1(10), CB1(10), CC1(10)
       COMPLEX*16 CDA1(10), CDB1(10), CDC1(10)
       COMPLEX*16 CQA1(10), CQB1(10), CQC1(10)

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
       INTEGER N2, N1
       PARAMETER (N2 = 10, N1 = 10)
       INTEGER II12, II11, II10, II9, II8, II7, II6, II5, II4, II3, II2
     X   , II1, J1, I1
       REAL RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5
     X   , DD4, DD3, DD2, DD1
       LOGICAL LL3, LL2, LL1
       COMPLEX CC5, CC4

       RS1 = 0.
       IS1 = 0
       DS1 = 0D0

       DO I1=1,6,5
        IA1(I1) = 0
        IA1(I1+1) = 0
        IA1(I1+2) = 0
        IA1(I1+3) = 0
        IA1(I1+4) = 0
        IB1(I1) = I1 + 3
        IB1(I1+1) = I1 + 4
        IB1(I1+2) = I1 + 5
        IB1(I1+3) = I1 + 6
        IB1(I1+4) = I1 + 7
        IC1(I1) = I1 - 3
        IC1(I1+1) = I1 - 2
        IC1(I1+2) = I1 - 1
        IC1(I1+3) = I1
        IC1(I1+4) = I1 + 1
        RA1(I1) = 0.
        RA1(I1+1) = 0.
        RA1(I1+2) = 0.
        RA1(I1+3) = 0.
        RA1(I1+4) = 0.
        DA1(I1) = 0D0
        DA1(I1+1) = 0D0
        DA1(I1+2) = 0D0
        DA1(I1+3) = 0D0
        DA1(I1+4) = 0D0
        DB1(I1) = I1 + 3
        DB1(I1+1) = I1 + 4
        DB1(I1+2) = I1 + 5
        DB1(I1+3) = I1 + 6
        DB1(I1+4) = I1 + 7
        DC1(I1) = I1 - 3
        DC1(I1+1) = I1 - 2
        DC1(I1+2) = I1 - 1
        DC1(I1+3) = I1
        DC1(I1+4) = I1 + 1
        LA1(I1) = .FALSE.
        LA1(I1+1) = .FALSE.
        LA1(I1+2) = .FALSE.
        LA1(I1+3) = .FALSE.
        LA1(I1+4) = .FALSE.
       END DO


C$OMP PARALLEL SHARED (RA2,RB2,RC2,DA2,DB2,DC2,LA2,LB2,LC2,CA2,CB2,DA3,
C$OMP& DB3,DC3,CA3,CB3) PRIVATE (J1,I1,II1,II3,II4,II5,II6,II7)
C$OMP DO 
       DO J1=1,10
        DO I1=1,6,5
         RA2(I1,J1) = 0.
         RA2(I1+1,J1) = 0.
         RA2(I1+2,J1) = 0.
         RA2(I1+3,J1) = 0.
         RA2(I1+4,J1) = 0.
         RB2(I1,J1) = I1 + J1
         RB2(I1+1,J1) = I1 + J1 + 1
         RB2(I1+2,J1) = I1 + J1 + 2
         RB2(I1+3,J1) = I1 + J1 + 3
         RB2(I1+4,J1) = I1 + J1 + 4
         RC2(I1,J1) = I1 - J1
         RC2(I1+1,J1) = I1 - J1 + 1
         RC2(I1+2,J1) = I1 - J1 + 2
         RC2(I1+3,J1) = I1 - J1 + 3
         RC2(I1+4,J1) = I1 - J1 + 4
         DA2(I1,J1) = 0D0
         DA2(I1+1,J1) = 0D0
         DA2(I1+2,J1) = 0D0
         DA2(I1+3,J1) = 0D0
         DA2(I1+4,J1) = 0D0
         DB2(I1,J1) = I1 + J1
         DB2(I1+1,J1) = I1 + J1 + 1
         DB2(I1+2,J1) = I1 + J1 + 2
         DB2(I1+3,J1) = I1 + J1 + 3
         DB2(I1+4,J1) = I1 + J1 + 4
         DC2(I1,J1) = I1 - J1
         DC2(I1+1,J1) = I1 - J1 + 1
         DC2(I1+2,J1) = I1 - J1 + 2
         DC2(I1+3,J1) = I1 - J1 + 3
         DC2(I1+4,J1) = I1 - J1 + 4
         LA2(I1,J1) = .FALSE.
         LA2(I1+1,J1) = .FALSE.
         LA2(I1+2,J1) = .FALSE.
         LA2(I1+3,J1) = .FALSE.
         LA2(I1+4,J1) = .FALSE.
         LB2(I1,J1) = .TRUE.
         LB2(I1+1,J1) = .TRUE.
         LB2(I1+2,J1) = .TRUE.
         LB2(I1+3,J1) = .TRUE.
         LB2(I1+4,J1) = .TRUE.
         LC2(I1,J1) = .FALSE.
         LC2(I1+1,J1) = .FALSE.
         LC2(I1+2,J1) = .FALSE.
         LC2(I1+3,J1) = .FALSE.
         LC2(I1+4,J1) = .FALSE.
         CA2(I1,J1) = (0., 0.)
         CA2(I1+1,J1) = (0., 0.)
         CA2(I1+2,J1) = (0., 0.)
         CA2(I1+3,J1) = (0., 0.)
         CA2(I1+4,J1) = (0., 0.)
         CB2(I1,J1) = I1 - 1
         CB2(I1+1,J1) = I1
         CB2(I1+2,J1) = I1 + 1
         CB2(I1+3,J1) = I1 + 2
         CB2(I1+4,J1) = I1 + 3
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J1=1,5
        II1 = J1 * (-2)

        DO I1=1,6,5
         DA3(I1,J1,1) = I1 + J1 - 1
         DA3(I1+1,J1,1) = I1 + J1
         DA3(I1+2,J1,1) = I1 + J1 + 1
         DA3(I1+3,J1,1) = I1 + J1 + 2
         DA3(I1+4,J1,1) = I1 + J1 + 3
         DA3(I1,J1,2) = I1 + J1 - 2
         DA3(I1+1,J1,2) = I1 + J1 - 1
         DA3(I1+2,J1,2) = I1 + J1
         DA3(I1+3,J1,2) = I1 + J1 + 1
         DA3(I1+4,J1,2) = I1 + J1 + 2
         DB3(I1,J1,1) = I1 * J1
         DB3(I1+1,J1,1) = (I1 + 1) * J1
         DB3(I1+2,J1,1) = (I1 + 2) * J1
         DB3(I1+3,J1,1) = (I1 + 3) * J1
         DB3(I1+4,J1,1) = (I1 + 4) * J1
         II4 = I1 * J1
         II5 = (I1 + 1) * J1
         II6 = (I1 + 2) * J1
         II7 = (I1 + 3) * J1
         II3 = (I1 + 4) * J1
         DB3(I1,J1,2) = II4 * 2
         DB3(I1+1,J1,2) = II5 * 2
         DB3(I1+2,J1,2) = II6 * 2
         DB3(I1+3,J1,2) = II7 * 2
         DB3(I1+4,J1,2) = II3 * 2
         DC3(I1,J1,1) = I1 - J1
         DC3(I1+1,J1,1) = I1 - J1 + 1
         DC3(I1+2,J1,1) = I1 - J1 + 2
         DC3(I1+3,J1,1) = I1 - J1 + 3
         DC3(I1+4,J1,1) = I1 - J1 + 4
         DC3(I1,J1,2) = I1 + II1
         DC3(I1+1,J1,2) = I1 + II1 + 1
         DC3(I1+2,J1,2) = I1 + II1 + 2
         DC3(I1+3,J1,2) = I1 + II1 + 3
         DC3(I1+4,J1,2) = I1 + II1 + 4
         CA3(I1,J1,1) = I1 + J1 - 1
         CA3(I1+1,J1,1) = I1 + J1
         CA3(I1+2,J1,1) = I1 + J1 + 1
         CA3(I1+3,J1,1) = I1 + J1 + 2
         CA3(I1+4,J1,1) = I1 + J1 + 3
         CA3(I1,J1,2) = I1 + J1 - 2
         CA3(I1+1,J1,2) = I1 + J1 - 1
         CA3(I1+2,J1,2) = I1 + J1
         CA3(I1+3,J1,2) = I1 + J1 + 1
         CA3(I1+4,J1,2) = I1 + J1 + 2
         CB3(I1,J1,1) = I1 * J1
         CB3(I1+1,J1,1) = (I1 + 1) * J1
         CB3(I1+2,J1,1) = (I1 + 2) * J1
         CB3(I1+3,J1,1) = (I1 + 3) * J1
         CB3(I1+4,J1,1) = (I1 + 4) * J1
         II4 = I1 * J1
         II5 = (I1 + 1) * J1
         II6 = (I1 + 2) * J1
         II7 = (I1 + 3) * J1
         II3 = (I1 + 4) * J1
         CB3(I1,J1,2) = II4 * 2
         CB3(I1+1,J1,2) = II5 * 2
         CB3(I1+2,J1,2) = II6 * 2
         CB3(I1+3,J1,2) = II7 * 2
         CB3(I1+4,J1,2) = II3 * 2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
       DO I1=1,10
        IF (LA1(I1)) THEN
         IS1 = IS1 + IA1(I1)
        ELSE
         RS1 = AMAX1 (RS1, RA1(I1))
        END IF
        RA1(I1) = FLOAT (I1)
       END DO
       DO J1=1,2
        DO I1=1,10
         IF (LA2(I1,J1)) THEN
          RR1 = SQRT (RB2(I1,J1))
          RR2 = RA1(I1)
          RR3 = RA2(I1,J1)
          DD1 = DB2(I1,J1)
          DA3(I1,J1,1) = DA3(I1,J1,1) + DB3(I1,J1,1)
          RR3 = RR3 + RR2 + RR1
          DS1 = DS1 + DD1
          DA3(I1,J1,2) = DA3(I1,J1,2) + DB3(I1,J1,2)
          RR3 = RR3 + RR2 + RR1
          DS1 = DS1 + DD1
          RA2(I1,J1) = RR3
         ELSE
          RR4 = SQRT (RB2(I1,J1))
          RR5 = RA1(I1)
          RR6 = RA2(I1,J1)
          DA3(I1,J1,1) = DA3(I1,J1,1) + DB3(I1,J1,1)
          RR6 = RR6 + RR5 + RR4
          DA3(I1,J1,2) = DA3(I1,J1,2) + DB3(I1,J1,2)
          RR6 = RR6 + RR5 + RR4
          RA2(I1,J1) = RR6
         END IF
         DB2(I1,J1) = DB2(I1,J1) * 2. + DA1(I1)
         RA2(I1,J1) = 0.
         LC2(I1,J1) = DB2(I1,J1) .GT. DC2(I1,J1)
        END DO
       END DO
       DO I1=1,6,5
        DD2 = IA1(I1) + DA1(I1)
        DD3 = IA1(I1+1) + DA1(I1+1)
        DD4 = IA1(I1+2) + DA1(I1+2)
        DD5 = IA1(I1+3) + DA1(I1+3)
        DD6 = IA1(I1+4) + DA1(I1+4)
        CA2(I1,1) = DD2
        CA2(I1,2) = DD2
        CA2(I1+1,1) = DD3
        CA2(I1+1,2) = DD3
        CA2(I1+2,1) = DD4
        CA2(I1+2,2) = DD4
        CA2(I1+3,1) = DD5
        CA2(I1+3,2) = DD5
        CA2(I1+4,1) = DD6
        CA2(I1+4,2) = DD6
       END DO
       I = 11

       WRITE (6, *) 'IS1 = ', IS1
       WRITE (6, *) 'RS1 = ', RS1
       WRITE (6, *) 'RA1'
       WRITE (6, 990) RA1
       WRITE (6, *) 'DA3'
       WRITE (6, 990) DA3
  990  FORMAT(5(1X,F14.7))
       WRITE (6, *) 'RA2'
       WRITE (6, 989) RA2
  989  FORMAT(5(1X,D14.7))
       WRITE (6, *) 'DS1 = ', DS1
       WRITE (6, *) 'CA2'
       WRITE (6, 991) ((CA2(I,J), I=1,10), J=1,10)
       WRITE (6, *) 'DB2 = '
       WRITE (6, 991) DB2
  991  FORMAT(5F10.5)
       WRITE (6, *) 'LC2 = '
       WRITE (6, 992) LC2
  992  FORMAT(10L5)

       WRITE (6, *) '----- TEST NO.2 -----'
       DO I1=1,6,5
        LC2(I1,1) = DB2(I1,1) .NE. DC2(I1,1)
        LC2(I1+1,1) = DB2(I1+1,1) .NE. DC2(I1+1,1)
        LC2(I1+2,1) = DB2(I1+2,1) .NE. DC2(I1+2,1)
        LC2(I1+3,1) = DB2(I1+3,1) .NE. DC2(I1+3,1)
        LC2(I1+4,1) = DB2(I1+4,1) .NE. DC2(I1+4,1)
        LC2(I1,2) = DB2(I1,2) .NE. DC2(I1,2)
        LC2(I1+1,2) = DB2(I1+1,2) .NE. DC2(I1+1,2)
        LC2(I1+2,2) = DB2(I1+2,2) .NE. DC2(I1+2,2)
        LC2(I1+3,2) = DB2(I1+3,2) .NE. DC2(I1+3,2)
        LC2(I1+4,2) = DB2(I1+4,2) .NE. DC2(I1+4,2)
        LC2(I1,3) = DB2(I1,3) .NE. DC2(I1,3)
        LC2(I1+1,3) = DB2(I1+1,3) .NE. DC2(I1+1,3)
        LC2(I1+2,3) = DB2(I1+2,3) .NE. DC2(I1+2,3)
        LC2(I1+3,3) = DB2(I1+3,3) .NE. DC2(I1+3,3)
        LC2(I1+4,3) = DB2(I1+4,3) .NE. DC2(I1+4,3)
        LC2(I1,4) = DB2(I1,4) .NE. DC2(I1,4)
        LC2(I1+1,4) = DB2(I1+1,4) .NE. DC2(I1+1,4)
        LC2(I1+2,4) = DB2(I1+2,4) .NE. DC2(I1+2,4)
        LC2(I1+3,4) = DB2(I1+3,4) .NE. DC2(I1+3,4)
        LC2(I1+4,4) = DB2(I1+4,4) .NE. DC2(I1+4,4)
       END DO
       DO I1=1,6,5
        LC2(I1,5) = DB2(I1,5) .NE. DC2(I1,5)
        LC2(I1+1,5) = DB2(I1+1,5) .NE. DC2(I1+1,5)
        LC2(I1+2,5) = DB2(I1+2,5) .NE. DC2(I1+2,5)
        LC2(I1+3,5) = DB2(I1+3,5) .NE. DC2(I1+3,5)
        LC2(I1+4,5) = DB2(I1+4,5) .NE. DC2(I1+4,5)
       END DO
C$OMP PARALLEL SHARED (LC2,CA2,CB2,LA2,DB2,DA3,DB3,CA3,CB3,LB2,DA2,DA1,
C$OMP& IA1,DC2) PRIVATE (DD7,CC4,LL1,DD8,CC5,J1,I1)
C$OMP DO 
       DO J1=1,5
        DO I1=1,10
         IF (LC2(I1,J1)) THEN
          CA2(I1,J1) = CA2(I1,J1) * CB2(I1,J1)
         END IF
         IF (LA2(I1,J1)) THEN
          DD7 = DB2(I1,J1)
          LL1 = .NOT.LC2(I1,J1)
          DA3(I1,J1,1) = DB3(I1,J1,1) + DD7
          DA3(I1,J1,2) = DB3(I1,J1,2) + DD7
          CC4 = CA3(I1,J1,2) - CB3(I1,J1,2)
          CA2(I1,J1) = CC4
          LB2(I1,J1) = LL1
         ELSE
          DD8 = DB2(I1,J1)
          DA3(I1,J1,1) = DB3(I1,J1,1) + DD8
          DA3(I1,J1,2) = DB3(I1,J1,2) + DD8
          CC5 = CA3(I1,J1,2) - CB3(I1,J1,2)
          CA2(I1,J1) = CC5
         END IF
         DB2(I1,J1) = DA2(I1,J1) * 2. + DA1(I1) + DFLOAT (IA1(I1))
         LC2(I1,J1) = DB2(I1,J1) .EQ. DC2(I1,J1)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I1=1,6,5
        CA2(I1,1) = IA1(I1) + DA1(I1)
        CA2(I1+1,1) = IA1(I1+1) + DA1(I1+1)
        CA2(I1+2,1) = IA1(I1+2) + DA1(I1+2)
        CA2(I1+3,1) = IA1(I1+3) + DA1(I1+3)
        CA2(I1+4,1) = IA1(I1+4) + DA1(I1+4)
        CA2(I1,2) = IA1(I1) + DA1(I1)
        CA2(I1+1,2) = IA1(I1+1) + DA1(I1+1)
        CA2(I1+2,2) = IA1(I1+2) + DA1(I1+2)
        CA2(I1+3,2) = IA1(I1+3) + DA1(I1+3)
        CA2(I1+4,2) = IA1(I1+4) + DA1(I1+4)
        CA2(I1,3) = IA1(I1) + DA1(I1)
        CA2(I1+1,3) = IA1(I1+1) + DA1(I1+1)
        CA2(I1+2,3) = IA1(I1+2) + DA1(I1+2)
        CA2(I1+3,3) = IA1(I1+3) + DA1(I1+3)
        CA2(I1+4,3) = IA1(I1+4) + DA1(I1+4)
        CA2(I1,4) = IA1(I1) + DA1(I1)
        CA2(I1+1,4) = IA1(I1+1) + DA1(I1+1)
        CA2(I1+2,4) = IA1(I1+2) + DA1(I1+2)
        CA2(I1+3,4) = IA1(I1+3) + DA1(I1+3)
        CA2(I1+4,4) = IA1(I1+4) + DA1(I1+4)
       END DO
       DO I1=1,6,5
        CA2(I1,5) = IA1(I1) + DA1(I1)
        CA2(I1+1,5) = IA1(I1+1) + DA1(I1+1)
        CA2(I1+2,5) = IA1(I1+2) + DA1(I1+2)
        CA2(I1+3,5) = IA1(I1+3) + DA1(I1+3)
        CA2(I1+4,5) = IA1(I1+4) + DA1(I1+4)
       END DO
       DO I1=1,6,5
        IA1(I1) = -I1
        IA1(I1+1) = -1 - I1
        IA1(I1+2) = -2 - I1
        IA1(I1+3) = -3 - I1
        IA1(I1+4) = -4 - I1
       END DO
       DO I1=1,10
        IF (LA1(I1)) THEN
         DA1(I1) = DB1(I1) * DC1(I1)
        END IF
        DA1(I1) = DFLOAT (IA1(I1))
       END DO
       I = 11

       WRITE (6, *) 'LC2 = '
       WRITE (6, 993) LC2
  993  FORMAT(10L5)
       WRITE (6, *) 'CA2'
       WRITE (6, 994) ((CA2(I,J), I=1,10), J=1,10)
       WRITE (6, *) 'DA3 = '
       WRITE (6, 994) DA3
  994  FORMAT(5F10.5)
       WRITE (6, *) 'LB2 = '
       WRITE (6, 995) LB2
  995  FORMAT(10L5)
       WRITE (6, *) 'DB2 = '
       WRITE (6, 994) DB2
       WRITE (6, *) 'DA1 = '
       WRITE (6, 994) DA1
       WRITE (6, *) 'IA1 = ', IA1

       WRITE (6, *) '----- TEST NO.3 -----'
       DO J1=1,7,4
        DO I1=1,6,5
         DA2(I1,J1) = RA2(I1,J1) + I1
         DA2(I1+1,J1) = 1 + RA2(I1+1,J1) + I1
         DA2(I1+2,J1) = 2 + RA2(I1+2,J1) + I1
         DA2(I1+3,J1) = 3 + RA2(I1+3,J1) + I1
         DA2(I1+4,J1) = 4 + RA2(I1+4,J1) + I1
         DA2(I1,J1+1) = RA2(I1,J1+1) + I1
         DA2(I1+1,J1+1) = 1 + RA2(I1+1,J1+1) + I1
         DA2(I1+2,J1+1) = 2 + RA2(I1+2,J1+1) + I1
         DA2(I1+3,J1+1) = 3 + RA2(I1+3,J1+1) + I1
         DA2(I1+4,J1+1) = 4 + RA2(I1+4,J1+1) + I1
         DA2(I1,J1+2) = RA2(I1,J1+2) + I1
         DA2(I1+1,J1+2) = 1 + RA2(I1+1,J1+2) + I1
         DA2(I1+2,J1+2) = 2 + RA2(I1+2,J1+2) + I1
         DA2(I1+3,J1+2) = 3 + RA2(I1+3,J1+2) + I1
         DA2(I1+4,J1+2) = 4 + RA2(I1+4,J1+2) + I1
         DA2(I1,J1+3) = RA2(I1,J1+3) + I1
         DA2(I1+1,J1+3) = 1 + RA2(I1+1,J1+3) + I1
         DA2(I1+2,J1+3) = 2 + RA2(I1+2,J1+3) + I1
         DA2(I1+3,J1+3) = 3 + RA2(I1+3,J1+3) + I1
         DA2(I1+4,J1+3) = 4 + RA2(I1+4,J1+3) + I1
         RB2(I1,J1) = RC2(I1,J1) * 3.
         RB2(I1+1,J1) = RC2(I1+1,J1) * 3.
         RB2(I1+2,J1) = RC2(I1+2,J1) * 3.
         RB2(I1+3,J1) = RC2(I1+3,J1) * 3.
         RB2(I1+4,J1) = RC2(I1+4,J1) * 3.
         RB2(I1,J1+1) = RC2(I1,J1+1) * 3.
         RB2(I1+1,J1+1) = RC2(I1+1,J1+1) * 3.
         RB2(I1+2,J1+1) = RC2(I1+2,J1+1) * 3.
         RB2(I1+3,J1+1) = RC2(I1+3,J1+1) * 3.
         RB2(I1+4,J1+1) = RC2(I1+4,J1+1) * 3.
         RB2(I1,J1+2) = RC2(I1,J1+2) * 3.
         RB2(I1+1,J1+2) = RC2(I1+1,J1+2) * 3.
         RB2(I1+2,J1+2) = RC2(I1+2,J1+2) * 3.
         RB2(I1+3,J1+2) = RC2(I1+3,J1+2) * 3.
         RB2(I1+4,J1+2) = RC2(I1+4,J1+2) * 3.
         RB2(I1,J1+3) = RC2(I1,J1+3) * 3.
         RB2(I1+1,J1+3) = RC2(I1+1,J1+3) * 3.
         RB2(I1+2,J1+3) = RC2(I1+2,J1+3) * 3.
         RB2(I1+3,J1+3) = RC2(I1+3,J1+3) * 3.
         RB2(I1+4,J1+3) = RC2(I1+4,J1+3) * 3.
        END DO
       END DO
       DO J1=9,10,1
        DO I1=1,6,5
         DA2(I1,J1) = RA2(I1,J1) + I1
         DA2(I1+1,J1) = 1 + RA2(I1+1,J1) + I1
         DA2(I1+2,J1) = 2 + RA2(I1+2,J1) + I1
         DA2(I1+3,J1) = 3 + RA2(I1+3,J1) + I1
         DA2(I1+4,J1) = 4 + RA2(I1+4,J1) + I1
         RB2(I1,J1) = RC2(I1,J1) * 3.
         RB2(I1+1,J1) = RC2(I1+1,J1) * 3.
         RB2(I1+2,J1) = RC2(I1+2,J1) * 3.
         RB2(I1+3,J1) = RC2(I1+3,J1) * 3.
         RB2(I1+4,J1) = RC2(I1+4,J1) * 3.
        END DO
       END DO
       DO J1=1,10
        II2 = IC1(J1)
        DO I1=1,6,5
         II8 = IA1(I1) + II2
         IS1 = IS1 + II8
         II9 = IA1(I1+1) + II2
         IS1 = IS1 + II9
         II10 = IA1(I1+2) + II2
         IS1 = IS1 + II10
         II11 = IA1(I1+3) + II2
         IS1 = IS1 + II11
         II12 = IA1(I1+4) + II2
         IS1 = IS1 + II12
         IB1(I1+4) = II12
         IB1(I1+3) = II11
         IB1(I1+2) = II10
         IB1(I1+1) = II9
         IB1(I1) = II8
        END DO
        LL3 = J1 .GT. 5
        DO K=1,2
         LL2 = LL3
         DO I1=1,10
          N = J1
          IF (LL2) THEN
           N = J1 - 5
          END IF
          IF (DA3(I1,N,K) - 10D0) 35, 36, 37
   35     DB3(I1,N,K) = DC3(I1,N,K) - DA2(I1,J1)
          GO TO 38
   36     DC3(I1,N,K) = RB2(I1,J1) + DFLOAT (IB1(I1))
          GO TO 38
   37     CONTINUE
          RA2(I1,J1) = SQRT (ABS (RB2(I1,J1)))
          IF (LA2(I1,J1)) THEN
           LB2(I1,J1) = .NOT.LC2(I1,J1)
          END IF
   38     CONTINUE
         END DO
        END DO
       END DO
       DO I1=1,6,5
        DD9 = DFLOAT (I1)
        DS1 = DS1 + DD9
        RS1 = AMAX1 (RS1, RA1(I1))
        IA1(I1) = -I1
        DD10 = DFLOAT (I1 + 1)
        DS1 = DS1 + DD10
        RS1 = AMAX1 (RS1, RA1(I1+1))
        IA1(I1+1) = -1 - I1
        DD11 = DFLOAT (I1 + 2)
        DS1 = DS1 + DD11
        RS1 = AMAX1 (RS1, RA1(I1+2))
        IA1(I1+2) = -2 - I1
        DD12 = DFLOAT (I1 + 3)
        DS1 = DS1 + DD12
        RS1 = AMAX1 (RS1, RA1(I1+3))
        IA1(I1+3) = -3 - I1
        DD13 = DFLOAT (I1 + 4)
        DS1 = DS1 + DD13
        RS1 = AMAX1 (RS1, RA1(I1+4))
        IA1(I1+4) = -4 - I1
        DA1(I1+4) = DD13
        DA1(I1+3) = DD12
        DA1(I1+2) = DD11
        DA1(I1+1) = DD10
        DA1(I1) = DD9
       END DO
       DO I1=1,10
        IF (LA1(I1)) THEN
         DA1(I1) = DB1(I1) * DC1(I1)
        END IF
        DA1(I1) = DFLOAT (IA1(I1))
       END DO

       WRITE (6, *) 'DA1'
       WRITE (6, 996) DA1
  996  FORMAT(5(1X,F14.7))
       WRITE (6, *) 'DS1 = ', DS1
       WRITE (6, *) 'RS1 = ', RS1
       WRITE (6, *) 'DA2 = '
       WRITE (6, 994) DA2
       WRITE (6, *) 'RB2 = '
       WRITE (6, 994) RB2
       WRITE (6, *) 'IB1 = ', IB1
       WRITE (6, *) 'IS1 = ', IS1
       WRITE (6, *) 'DB3 = '
       WRITE (6, 994) DB3
       WRITE (6, *) 'DC3 = '
       WRITE (6, 994) DC3
       WRITE (6, *) 'RA2'
       WRITE (6, 997) RA2
  997  FORMAT(5(1X,D14.7))
       WRITE (6, *) 'LB2'
       WRITE (6, 998) LB2
  998  FORMAT(20(1X,L2))
       WRITE (6, *) 'IA1 = ', IA1

       STOP 
      END
