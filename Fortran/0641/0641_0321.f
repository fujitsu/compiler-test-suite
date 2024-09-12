      PROGRAM MAIN


       PARAMETER (L1 = 10, L2 = 10, L3 = 10)
       INTEGER*4 IA1(10), IB1(10), IC1(10)
       INTEGER*4 IA2(10,10), IB2(10,10), IC2(10,10)
       REAL*4 RA1(10), RB1(10), RC1(10)
       REAL*4 RA2(10,10), RB2(10,10), RC2(10,10)
       REAL*4 RA3(10,10,10), RB3(10,10,10), RC3(10,10,10)
       REAL*8 DA1(10), DB1(10), DC1(10), DP1(10), DM1(10)
       REAL*8 DA2(10,10), DB2(10,10), DC2(10,10)
       REAL*8 DA3(10,10,10), DB3(10,10,10), DC3(10,10,10)
       REAL*8 QA2(10,10), QB2(10,10), QC2(10,10)
       COMPLEX CA1(10), CB1(10), CC1(10)
       COMPLEX CA2(10,10), CB2(10,10), CC2(10,10)
       COMPLEX CA3(10,10,10), CB3(10,10,10), CC3(10,10,10)
       LOGICAL*4 LA1(10), LB1(10), LC1(10)
       LOGICAL*4 LA3(10,10,10), LB3(10,10,10), LC3(10,10,10)
       REAL RR1, RR2, RR3
       PARAMETER (RR1 = 1. / 3., RR2 = 1. / 2., RR3 = 1. / 4.)
       COMMON /CV6403K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR19, LB3, LA3
       INTEGER II6, II5, II4, II3, II2, II1, K1
       REAL RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, 
     X   RR8, RR7, RR6, RR5, RR4
       DOUBLE PRECISION DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL5, LL4, LL3, LL2, LL1
       REAL RR19 (86)
                                                       
       DO I=1,9,2
        IA1(I) = I
        IA1(I+1) = I + 1
        IB1(I) = I + 2
        IB1(I+1) = I + 3
        IC1(I) = I + 3
        IC1(I+1) = I + 4
        RA1(I) = I + 2
        RA1(I+1) = I + 3
        RB1(I) = I + 3
        RB1(I+1) = I + 4
        RC1(I) = I + 4
        RC1(I+1) = I + 5
        DA1(I) = I * 2
        DA1(I+1) = I * 2 + 2
        DB1(I) = I * 3 - 2
        DB1(I+1) = I * 3 + 1
        DC1(I) = I * 2 + 3
        DC1(I+1) = I * 2 + 5
        DP1(I) = I * 3
        DP1(I+1) = I * 3 + 3
        DM1(I) = I * 2
        DM1(I+1) = I * 2 + 2
        RR12 = FLOAT (I)
        RR10 = FLOAT (I + 1)
        RR13 = FLOAT (I)
        RR11 = FLOAT (I + 1)
        CA1(I) = CMPLX (RR12, RR13)
        CA1(I+1) = CMPLX (RR10, RR11)
        II6 = I + 5
        II5 = I + 6
        RR12 = FLOAT (II6)
        RR10 = FLOAT (II5)
        RR13 = FLOAT (I)
        RR11 = FLOAT (I + 1)
        CB1(I) = CMPLX (RR12, RR13)
        CB1(I+1) = CMPLX (RR10, RR11)
        LA1(I) = MOD (I, 2) .EQ. 0
        LA1(I+1) = MOD (I + 1, 2) .EQ. 0
        LB1(I) = MOD (I, 3) .EQ. 0
        LB1(I+1) = MOD (I + 1, 3) .EQ. 0
        LC1(I) = MOD (I, 4) .EQ. 0
        LC1(I+1) = MOD (I + 1, 4) .EQ. 0
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA2,RB2,RC2,DA2,DB2,QA2,QB2,LA3) PRIVATE (II1,J,I
C$OMP& ,LL1,LL2,LL3,LL4,II2,II3,II4,LL5,K1)
C$OMP DO 
       DO J=1,10
        II1 = J * 3
                                                                        
                                                       
        DO I=1,6,5
         RA2(I,J) = I * J + 5
         RA2(I+1,J) = (I + 1) * J + 5
         RA2(I+2,J) = (I + 2) * J + 5
         RA2(I+3,J) = (I + 3) * J + 5
         RA2(I+4,J) = (I + 4) * J + 5
         RB2(I,J) = I - J - 5
         RB2(I+1,J) = I - J - 4
         RB2(I+2,J) = I - J - 3
         RB2(I+3,J) = I - J - 2
         RB2(I+4,J) = I - J - 1
         RC2(I,J) = I + II1
         RC2(I+1,J) = I + II1 + 1
         RC2(I+2,J) = I + II1 + 2
         RC2(I+3,J) = I + II1 + 3
         RC2(I+4,J) = I + II1 + 4
         DA2(I,J) = I * J - 2
         DA2(I+1,J) = (I + 1) * J - 2
         DA2(I+2,J) = (I + 2) * J - 2
         DA2(I+3,J) = (I + 3) * J - 2
         DA2(I+4,J) = (I + 4) * J - 2
         DB2(I,J) = I - J - 3
         DB2(I+1,J) = I - J - 2
         DB2(I+2,J) = I - J - 1
         DB2(I+3,J) = I - J
         DB2(I+4,J) = I - J + 1
         QA2(I,J) = I * J - 5
         QA2(I+1,J) = (I + 1) * J - 5
         QA2(I+2,J) = (I + 2) * J - 5
         QA2(I+3,J) = (I + 3) * J - 5
         QA2(I+4,J) = (I + 4) * J - 5
         QB2(I,J) = I - J - 6
         QB2(I+1,J) = I - J - 5
         QB2(I+2,J) = I - J - 4
         QB2(I+3,J) = I - J - 3
         QB2(I+4,J) = I - J - 2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
                                                                        
C$OMP DO 
       DO K1=1,10
        II2 = K1 - 1
        II3 = K1 - 2
        II4 = K1 - 3
                                                                        
        DO J=1,7,4
         LL1 = J .GT. K1
         LL2 = J .GT. II2
         LL3 = J .GT. II3
         LL4 = J .GT. II4
                                                                        
                                                       
         DO I=1,6,5
          LA3(I,J,K1) = LL1
          LA3(I+1,J,K1) = LL1
          LA3(I+2,J,K1) = LL1
          LA3(I+3,J,K1) = LL1
          LA3(I+4,J,K1) = LL1
          LA3(I,J+1,K1) = LL2
          LA3(I+1,J+1,K1) = LL2
          LA3(I+2,J+1,K1) = LL2
          LA3(I+3,J+1,K1) = LL2
          LA3(I+4,J+1,K1) = LL2
          LA3(I,J+2,K1) = LL3
          LA3(I+1,J+2,K1) = LL3
          LA3(I+2,J+2,K1) = LL3
          LA3(I+3,J+2,K1) = LL3
          LA3(I+4,J+2,K1) = LL3
          LA3(I,J+3,K1) = LL4
          LA3(I+1,J+3,K1) = LL4
          LA3(I+2,J+3,K1) = LL4
          LA3(I+3,J+3,K1) = LL4
          LA3(I+4,J+3,K1) = LL4
         END DO
        END DO
        DO J=9,10,1
         LL5 = J .GT. K1
                                                                        
                                                       
         DO I=1,6,5
          LA3(I,J,K1) = LL5
          LA3(I+1,J,K1) = LL5
          LA3(I+2,J,K1) = LL5
          LA3(I+3,J,K1) = LL5
          LA3(I+4,J,K1) = LL5
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       RMAX = -99999.
       IMAX = 0
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) + RC1(I)
        RA1(I+1) = RB1(I+1) + RC1(I+1)
        RA1(I+2) = RB1(I+2) + RC1(I+2)
        RA1(I+3) = RB1(I+3) + RC1(I+3)
        RA1(I+4) = RB1(I+4) + RC1(I+4)
                                                                        
        DD1 = DA2(I,2) * 2.
        DD2 = DA2(I+1,2) * 2.
        DD3 = DA2(I+2,2) * 2.
        DD4 = DA2(I+3,2) * 2.
        DD5 = DA2(I+4,2) * 2.
        DB2(I,2) = -DD1
        DB2(I+1,2) = -DD2
        DB2(I+2,2) = -DD3
        DB2(I+3,2) = -DD4
        DB2(I+4,2) = -DD5
       END DO
       DO J=1,7,4
                                                                        
        DO I=1,6,5
         QA2(I,J) = QB2(I,J) + DB2(I,2)
         QA2(I+1,J) = QB2(I+1,J) + DB2(I+1,2)
         QA2(I+2,J) = QB2(I+2,J) + DB2(I+2,2)
         QA2(I+3,J) = QB2(I+3,J) + DB2(I+3,2)
         QA2(I+4,J) = QB2(I+4,J) + DB2(I+4,2)
         QA2(I,J+1) = QB2(I,J+1) + DB2(I,2)
         QA2(I+1,J+1) = QB2(I+1,J+1) + DB2(I+1,2)
         QA2(I+2,J+1) = QB2(I+2,J+1) + DB2(I+2,2)
         QA2(I+3,J+1) = QB2(I+3,J+1) + DB2(I+3,2)
         QA2(I+4,J+1) = QB2(I+4,J+1) + DB2(I+4,2)
         QA2(I,J+2) = QB2(I,J+2) + DB2(I,2)
         QA2(I+1,J+2) = QB2(I+1,J+2) + DB2(I+1,2)
         QA2(I+2,J+2) = QB2(I+2,J+2) + DB2(I+2,2)
         QA2(I+3,J+2) = QB2(I+3,J+2) + DB2(I+3,2)
         QA2(I+4,J+2) = QB2(I+4,J+2) + DB2(I+4,2)
         QA2(I,J+3) = QB2(I,J+3) + DB2(I,2)
         QA2(I+1,J+3) = QB2(I+1,J+3) + DB2(I+1,2)
         QA2(I+2,J+3) = QB2(I+2,J+3) + DB2(I+2,2)
         QA2(I+3,J+3) = QB2(I+3,J+3) + DB2(I+3,2)
         QA2(I+4,J+3) = QB2(I+4,J+3) + DB2(I+4,2)
        END DO
       END DO
       DO J=9,10,1
                                                                        
        DO I=1,6,5
         QA2(I,J) = QB2(I,J) + DB2(I,2)
         QA2(I+1,J) = QB2(I+1,J) + DB2(I+1,2)
         QA2(I+2,J) = QB2(I+2,J) + DB2(I+2,2)
         QA2(I+3,J) = QB2(I+3,J) + DB2(I+3,2)
         QA2(I+4,J) = QB2(I+4,J) + DB2(I+4,2)
        END DO
       END DO
                                                                        
       DO I=1,10
                                                                        
        IF (RA1(I) .LE. 17.) THEN
         IF (I .LT. 5) THEN
          IF (RB1(I) .GT. RMAX) THEN
           RMAX = RB1(I)
           IMAX = I
          END IF
          DA1(I) = DB1(I) + DC1(I)
                                                                        
         ELSE
          DO J=1,6,5
           RA2(I,J) = RB2(I,J) + RC2(I,J)
           RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
           RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
           RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
           RA2(I,J+4) = RB2(I,J+4) + RC2(I,J+4)
          END DO
                                                                        
          DA1(I) = DB1(I) - DC1(I)
         END IF
                                                                        
         IA1(I) = IB1(I) * IC1(I)
        END IF
       END DO
                                                                        
       WRITE (6, *) 'RMAX= ', RMAX
       WRITE (6, *) 'IMAX= ', IMAX
       WRITE (6, *) 'RB1= ', RB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
       WRITE (6, *) 'RA2= ', RA2
       WRITE (6, *) 'QA2= ', QA2
                                                                        
                                                                        
       RMIN = 99999.
       IMIN = 0
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) + RC1(I)
        RA1(I+1) = RB1(I+1) + RC1(I+1)
        RA1(I+2) = RB1(I+2) + RC1(I+2)
        RA1(I+3) = RB1(I+3) + RC1(I+3)
        RA1(I+4) = RB1(I+4) + RC1(I+4)
                                                                        
        DD6 = DA2(I,2) * 2.
        DD7 = DA2(I+1,2) * 2.
        DD8 = DA2(I+2,2) * 2.
        DD9 = DA2(I+3,2) * 2.
        DD10 = DA2(I+4,2) * 2.
        DB2(I,2) = -DD6
        DB2(I+1,2) = -DD7
        DB2(I+2,2) = -DD8
        DB2(I+3,2) = -DD9
        DB2(I+4,2) = -DD10
       END DO
                                                                        
       DO I=1,10
        IF (I .LE. 9) THEN
         IF (RA1(I) .GT. 17.) THEN
          IF (RB1(I) .LT. RMIN) THEN
           RMIN = RB1(I)
           IMIN = I
          END IF
          RR4 = RA1(I)
          DO J=1,6,5
           RA2(I,J) = RB2(I,J) * RR4
           RA2(I,J+1) = RB2(I,J+1) * RR4
           RA2(I,J+2) = RB2(I,J+2) * RR4
           RA2(I,J+3) = RB2(I,J+3) * RR4
           RA2(I,J+4) = RB2(I,J+4) * RR4
          END DO
                                                                        
          DA1(I) = DB1(I) + DC1(I)
         ELSE
          RR5 = RA1(I)
          DO J=1,6,5
           RA2(I,J) = RC2(I,J) * RR5
           RA2(I,J+1) = RC2(I,J+1) * RR5
           RA2(I,J+2) = RC2(I,J+2) * RR5
           RA2(I,J+3) = RC2(I,J+3) * RR5
           RA2(I,J+4) = RC2(I,J+4) * RR5
          END DO
          DA1(I) = DB1(I) - DC1(I)
         END IF
         IA1(I) = IB1(I) * IC1(I)
        END IF
       END DO
       DO J=1,7,4
                                                                        
        DO I=1,6,5
         QA2(I,J) = QB2(I,J) + DB2(I,2)
         QA2(I+1,J) = QB2(I+1,J) + DB2(I+1,2)
         QA2(I+2,J) = QB2(I+2,J) + DB2(I+2,2)
         QA2(I+3,J) = QB2(I+3,J) + DB2(I+3,2)
         QA2(I+4,J) = QB2(I+4,J) + DB2(I+4,2)
         QA2(I,J+1) = QB2(I,J+1) + DB2(I,2)
         QA2(I+1,J+1) = QB2(I+1,J+1) + DB2(I+1,2)
         QA2(I+2,J+1) = QB2(I+2,J+1) + DB2(I+2,2)
         QA2(I+3,J+1) = QB2(I+3,J+1) + DB2(I+3,2)
         QA2(I+4,J+1) = QB2(I+4,J+1) + DB2(I+4,2)
         QA2(I,J+2) = QB2(I,J+2) + DB2(I,2)
         QA2(I+1,J+2) = QB2(I+1,J+2) + DB2(I+1,2)
         QA2(I+2,J+2) = QB2(I+2,J+2) + DB2(I+2,2)
         QA2(I+3,J+2) = QB2(I+3,J+2) + DB2(I+3,2)
         QA2(I+4,J+2) = QB2(I+4,J+2) + DB2(I+4,2)
         QA2(I,J+3) = QB2(I,J+3) + DB2(I,2)
         QA2(I+1,J+3) = QB2(I+1,J+3) + DB2(I+1,2)
         QA2(I+2,J+3) = QB2(I+2,J+3) + DB2(I+2,2)
         QA2(I+3,J+3) = QB2(I+3,J+3) + DB2(I+3,2)
         QA2(I+4,J+3) = QB2(I+4,J+3) + DB2(I+4,2)
        END DO
       END DO
       DO J=9,10,1
                                                                        
        DO I=1,6,5
         QA2(I,J) = QB2(I,J) + DB2(I,2)
         QA2(I+1,J) = QB2(I+1,J) + DB2(I+1,2)
         QA2(I+2,J) = QB2(I+2,J) + DB2(I+2,2)
         QA2(I+3,J) = QB2(I+3,J) + DB2(I+3,2)
         QA2(I+4,J) = QB2(I+4,J) + DB2(I+4,2)
        END DO
       END DO
                                                                        
       WRITE (6, *) 'RMIN= ', RMIN
       WRITE (6, *) 'IMIN= ', IMIN
       WRITE (6, *) 'RB1= ', RB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
       WRITE (6, *) 'RA2= ', RA2
       WRITE (6, *) 'QA2= ', QA2
                                                                        
       K = 0
       M = 0
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) * RC1(I)
        RA1(I+1) = RB1(I+1) * RC1(I+1)
        RA1(I+2) = RB1(I+2) * RC1(I+2)
        RA1(I+3) = RB1(I+3) * RC1(I+3)
        RA1(I+4) = RB1(I+4) * RC1(I+4)
       END DO
                                                                        
       DO I=1,10
                                                                        
        IF (I .LE. 9) THEN
         RR6 = RA1(I)
         DO J=1,6,5
          RA2(I,J) = RB2(I,J) * RR6
          RA2(I,J+1) = RB2(I,J+1) * RR6
          RA2(I,J+2) = RB2(I,J+2) * RR6
          RA2(I,J+3) = RB2(I,J+3) * RR6
          RA2(I,J+4) = RB2(I,J+4) * RR6
         END DO
                                                                        
         IF (RA1(I) .LT. 23.) THEN
          IF (RB1(I) .LT. 100.) THEN
           K = K + 1
           DP1(K) = RB1(I)
          ELSE
           M = M + 1
           DM1(I) = RB1(M)
          END IF
          DA1(I) = DB1(I) + DC1(I)
         ELSE
          DA1(I) = DB1(I) - DC1(I)
         END IF
                                                                        
         IA1(I) = IB1(I) * IC1(I)
                                                                        
         IF (IC1(I) .NE. 0) THEN
          IA1(I) = IB1(I) * MOD (IB1(I), IC1(I))
          DO J=1,10
           IF (LA3(I,J,1)) THEN
            RA2(I,J) = RC2(I,J) * RA1(I)
           END IF
          END DO
                                                                        
         END IF
        END IF
       END DO
                                                                        
       WRITE (6, *) 'DP1= ', DP1
       WRITE (6, *) 'DM1= ', DM1
       WRITE (6, *) 'RB1= ', RB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
       WRITE (6, *) 'RA2= ', RA2
                                                                        
       RMAX = -99999.
       IMAX = 0
       RMIN = 99999.
       IMIN = 0
       K = 0
       M = 0
       S = -99999.
                                                                        
       DO I=1,6,5
        RR14 = RB1(I) + RC1(I)
        RR15 = RB1(I+1) + RC1(I+1)
        RR16 = RB1(I+2) + RC1(I+2)
        RR17 = RB1(I+3) + RC1(I+3)
        RR18 = RB1(I+4) + RC1(I+4)
                                                                        
        DD11 = DA2(I,2) * RR14
        DD12 = DA2(I+1,2) * RR15
        DD13 = DA2(I+2,2) * RR16
        DD14 = DA2(I+3,2) * RR17
        DD15 = DA2(I+4,2) * RR18
        DD16 = -DD11
        DD17 = -DD12
        DD18 = -DD13
        DD19 = -DD14
        DD20 = -DD15
                                                                        
        DB1(I) = DD16
        DB1(I+1) = DD17
        DB1(I+2) = DD18
        DB1(I+3) = DD19
        DB1(I+4) = DD20
        RA1(I+4) = RR18
        RA1(I+3) = RR17
        RA1(I+2) = RR16
        RA1(I+1) = RR15
        RA1(I) = RR14
       END DO
                                                                        
       DO I=1,10
        IF (RA1(I) .GT. RB1(I) * 2.) THEN
         S = RA1(I)
         IF (.NOT.LC1(11-I)) THEN
          IF (LA1(I)) THEN
           K = K + 1
           DP1(K) = RA1(I)
          END IF
         END IF
        END IF
                                                                        
        IF (LB1(I)) THEN
         CA1(I) = CB1(I) * 2.
         IF (RB1(I) - 7.) 31, 33, 35
   31    RK = RB1(I) * RR1
         RR7 = RA1(I)
         DO J=1,6,5
          RA2(I,J) = RB2(I,J) * RR7
          RA2(I,J+1) = RB2(I,J+1) * RR7
          RA2(I,J+2) = RB2(I,J+2) * RR7
          RA2(I,J+3) = RB2(I,J+3) * RR7
          RA2(I,J+4) = RB2(I,J+4) * RR7
         END DO
         GO TO 37
                                                                        
   33    RK = RB1(I) * RR2
         RR8 = RA1(I)
         DO J=1,6,5
          RA2(I,J) = RB2(I,J) - RR8
          RA2(I,J+1) = RB2(I,J+1) - RR8
          RA2(I,J+2) = RB2(I,J+2) - RR8
          RA2(I,J+3) = RB2(I,J+3) - RR8
          RA2(I,J+4) = RB2(I,J+4) - RR8
         END DO
         GO TO 37
                                                                        
   35    RK = RB1(I) * RR3
         IF (RC1(I) .GT. 0) THEN
          M = M + 1
          DM1(I) = RC1(M)
         END IF
         RR9 = RA1(I)
         DO J=1,6,5
          RA2(I,J) = RB2(I,J) - RR9
          RA2(I,J+1) = RB2(I,J+1) - RR9
          RA2(I,J+2) = RB2(I,J+2) - RR9
          RA2(I,J+3) = RB2(I,J+3) - RR9
          RA2(I,J+4) = RB2(I,J+4) - RR9
         END DO
                                                                        
   37    CB1(I) = 5. + CA1(I)
        END IF
                                                                        
        IF (RA1(I) .LE. 17.) THEN
         IF (I .LE. 4) THEN
          IF (RC1(I) .GT. RMAX) THEN
           RMAX = RC1(I)
           IMAX = I
          END IF
         ELSE
          IF (RC1(I) .LT. RMIN) THEN
           RMIN = RC1(I)
           IMIN = I
          END IF
          DA1(I) = DB1(I) - DC1(I)
         END IF
         IF (IC1(I) .NE. 0) THEN
          IA1(I) = MOD (IB1(I), IC1(I))
         END IF
        END IF
       END DO
                                                                        
       WRITE (6, *) 'RMAX= ', RMAX
       WRITE (6, *) 'IMAX= ', IMAX
       WRITE (6, *) 'RMIN= ', RMIN
       WRITE (6, *) 'IMIN= ', IMIN
       WRITE (6, *) 'RC1= ', RC1
       WRITE (6, *) 'DP1= ', DP1
       WRITE (6, *) 'DM1= ', DM1
       WRITE (6, *) '  S= ', S
       WRITE (6, *) ' RK= ', RK
       WRITE (6, *) 'CA1= ', CA1
       WRITE (6, *) 'CB1= ', CB1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
       WRITE (6, *) 'RA2= ', RA2
                                                                        
                                                                        
       STOP 
      END
