      PROGRAM MAIN


       PARAMETER (L1 = 10, L2 = 10, L3 = 10)
       INTEGER*4 IA1(10), IB1(10), IC1(10), ID1(10)
       INTEGER*4 IA2(10,10), IB2(10,10), IC2(10,10), ID2(10,10)
       INTEGER*4 IA3(10,10,10), IB3(10,10,10), IC3(10,10,10)
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
       LOGICAL*4 LA3(10,10,10), LB3(10,10,10), LC3(10,10,10)
       INTEGER IDX3, IDX2, IDX1
       PARAMETER (IDX3 = 10, IDX2 = 10, IDX1 = 10)
       COMMON /CV5293K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC3, 
     X   IB3, IA3, ID2, IC2, IB2, RR11, IA2, LC3, LB3, RR12, LA3
       INTEGER II1
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       REAL RR12 (86), RR11 (86)
                                                       
       DO I=1,6,5
        IA1(I) = I
        IA1(I+1) = I + 1
        IA1(I+2) = I + 2
        IA1(I+3) = I + 3
        IA1(I+4) = I + 4
        IB1(I) = I + 2
        IB1(I+1) = I + 3
        IB1(I+2) = I + 4
        IB1(I+3) = I + 5
        IB1(I+4) = I + 6
        IC1(I) = I + 3
        IC1(I+1) = I + 4
        IC1(I+2) = I + 5
        IC1(I+3) = I + 6
        IC1(I+4) = I + 7
        ID1(I) = I + 4
        ID1(I+1) = I + 5
        ID1(I+2) = I + 6
        ID1(I+3) = I + 7
        ID1(I+4) = I + 8
        RA1(I) = I + 2
        RA1(I+1) = I + 3
        RA1(I+2) = I + 4
        RA1(I+3) = I + 5
        RA1(I+4) = I + 6
        RB1(I) = I + 3
        RB1(I+1) = I + 4
        RB1(I+2) = I + 5
        RB1(I+3) = I + 6
        RB1(I+4) = I + 7
        RC1(I) = I + 4
        RC1(I+1) = I + 5
        RC1(I+2) = I + 6
        RC1(I+3) = I + 7
        RC1(I+4) = I + 8
        DA1(I) = I * 2
        DA1(I+1) = I * 2 + 2
        DA1(I+2) = I * 2 + 4
        DA1(I+3) = I * 2 + 6
        DA1(I+4) = I * 2 + 8
        DB1(I) = I * 3 - 2
        DB1(I+1) = I * 3 + 1
        DB1(I+2) = I * 3 + 4
        DB1(I+3) = I * 3 + 7
        DB1(I+4) = I * 3 + 10
        DC1(I) = I * 2 + 3
        DC1(I+1) = I * 2 + 5
        DC1(I+2) = I * 2 + 7
        DC1(I+3) = I * 2 + 9
        DC1(I+4) = I * 2 + 11
       END DO
                                                                        
C$OMP PARALLEL SHARED (IA2,IB2,IC2,RA2,RB2,RC2,DA2,DB2,IA3,IB3,IC3) 
C$OMP& PRIVATE (II1,J,I,K)
C$OMP DO 
       DO J=1,10
        II1 = J * 3
                                                                        
                                                       
        DO I=1,6,5
         IA2(I,J) = I * J
         IA2(I+1,J) = (I + 1) * J
         IA2(I+2,J) = (I + 2) * J
         IA2(I+3,J) = (I + 3) * J
         IA2(I+4,J) = (I + 4) * J
         IB2(I,J) = I - J
         IB2(I+1,J) = I - J + 1
         IB2(I+2,J) = I - J + 2
         IB2(I+3,J) = I - J + 3
         IB2(I+4,J) = I - J + 4
         IC2(I,J) = I + J
         IC2(I+1,J) = I + J + 1
         IC2(I+2,J) = I + J + 2
         IC2(I+3,J) = I + J + 3
         IC2(I+4,J) = I + J + 4
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
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
                                                                        
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,7,4
                                                                        
                                                       
         DO I=1,9,2
          IA3(I,J,K) = I + J + K
          IA3(I+1,J,K) = I + J + K + 1
          IA3(I,J+1,K) = I + J + K + 1
          IA3(I+1,J+1,K) = I + J + K + 2
          IA3(I,J+2,K) = I + J + K + 2
          IA3(I+1,J+2,K) = I + J + K + 3
          IA3(I,J+3,K) = I + J + K + 3
          IA3(I+1,J+3,K) = I + J + K + 4
          IB3(I,J,K) = I - J + K
          IB3(I+1,J,K) = I - J + K + 1
          IB3(I,J+1,K) = I - J + K - 1
          IB3(I+1,J+1,K) = I - J + K
          IB3(I,J+2,K) = I - J + K - 2
          IB3(I+1,J+2,K) = I - J + K - 1
          IB3(I,J+3,K) = I - J + K - 3
          IB3(I+1,J+3,K) = I - J + K - 2
          IC3(I,J,K) = I + J - K
          IC3(I+1,J,K) = I + J - K + 1
          IC3(I,J+1,K) = I + J - K + 1
          IC3(I+1,J+1,K) = I + J - K + 2
          IC3(I,J+2,K) = I + J - K + 2
          IC3(I+1,J+2,K) = I + J - K + 3
          IC3(I,J+3,K) = I + J - K + 3
          IC3(I+1,J+3,K) = I + J - K + 4
         END DO
        END DO
        DO J=9,10,1
                                                                        
                                                       
         DO I=1,6,5
          IA3(I,J,K) = I + J + K
          IA3(I+1,J,K) = I + J + K + 1
          IA3(I+2,J,K) = I + J + K + 2
          IA3(I+3,J,K) = I + J + K + 3
          IA3(I+4,J,K) = I + J + K + 4
          IB3(I,J,K) = I - J + K
          IB3(I+1,J,K) = I - J + K + 1
          IB3(I+2,J,K) = I - J + K + 2
          IB3(I+3,J,K) = I - J + K + 3
          IB3(I+4,J,K) = I - J + K + 4
          IC3(I,J,K) = I + J - K
          IC3(I+1,J,K) = I + J - K + 1
          IC3(I+2,J,K) = I + J - K + 2
          IC3(I+3,J,K) = I + J - K + 3
          IC3(I+4,J,K) = I + J - K + 4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
       DO I=1,10
        IF (ID1(I) .NE. 0) THEN
         IA1(I) = IB1(I) + IC1(I) / ID1(I)
        ELSE
         IF (IC1(I) .NE. 0) THEN
          IA1(I) = IB1(I) + ID1(I) / IC1(I)
         ELSE
          IA1(I) = IB1(I)
         END IF
        END IF
       END DO
                                                                        
       DO J=1,7,4
                                                                        
                                                                        
        DO I=1,10
         IA2(I,J) = IB2(I,J) + IC2(I,J)
         IF (IA2(I,J) .NE. 0) THEN
          IB2(I,J) = IA2(I,J) * MOD (IC2(I,J), IA2(I,J))
         END IF
         IA2(I,J+1) = IB2(I,J+1) + IC2(I,J+1)
         IF (IA2(I,J+1) .NE. 0) THEN
          IB2(I,J+1) = IA2(I,J+1) * MOD (IC2(I,J+1), IA2(I,J+1))
         END IF
         IA2(I,J+2) = IB2(I,J+2) + IC2(I,J+2)
         IF (IA2(I,J+2) .NE. 0) THEN
          IB2(I,J+2) = IA2(I,J+2) * MOD (IC2(I,J+2), IA2(I,J+2))
         END IF
         IA2(I,J+3) = IB2(I,J+3) + IC2(I,J+3)
         IF (IA2(I,J+3) .NE. 0) THEN
          IB2(I,J+3) = IA2(I,J+3) * MOD (IC2(I,J+3), IA2(I,J+3))
         END IF
        END DO
       END DO
       DO J=9,10,1
                                                                        
                                                                        
        DO I=1,10
         IA2(I,J) = IB2(I,J) + IC2(I,J)
         IF (IA2(I,J) .NE. 0) THEN
          IB2(I,J) = IA2(I,J) * MOD (IC2(I,J), IA2(I,J))
         END IF
        END DO
       END DO
                                                                        
       WRITE (6, *) '### IA1=', IA1
       WRITE (6, *) '### IA2=', IA2
       WRITE (6, *) '### IB2=', IB2
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
                                                                        
       DO J=1,7,4
                                                                        
                                                                        
        DO I=1,10
         IF (IC2(I,J) .NE. 0) THEN
          IA2(I,J) = IC2(I,J) * MOD (IB2(I,J), IC2(I,J))
         END IF
         RA2(I,J) = RB2(I,J) + RC2(I,J)
         IF (IC2(I,J+1) .NE. 0) THEN
          IA2(I,J+1) = IC2(I,J+1) * MOD (IB2(I,J+1), IC2(I,J+1))
         END IF
         RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
         IF (IC2(I,J+2) .NE. 0) THEN
          IA2(I,J+2) = IC2(I,J+2) * MOD (IB2(I,J+2), IC2(I,J+2))
         END IF
         RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
         IF (IC2(I,J+3) .NE. 0) THEN
          IA2(I,J+3) = IC2(I,J+3) * MOD (IB2(I,J+3), IC2(I,J+3))
         END IF
         RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
        END DO
       END DO
       DO J=9,10,1
                                                                        
                                                                        
        DO I=1,10
         IF (IC2(I,J) .NE. 0) THEN
          IA2(I,J) = IC2(I,J) * MOD (IB2(I,J), IC2(I,J))
         END IF
         RA2(I,J) = RB2(I,J) + RC2(I,J)
        END DO
       END DO
                                                                        
                                                                        
       DO I=1,6,5
        RR6 = RB1(I) + RC1(I)
        RR7 = RB1(I+1) + RC1(I+1)
        RR8 = RB1(I+2) + RC1(I+2)
        RR9 = RB1(I+3) + RC1(I+3)
        RR10 = RB1(I+4) + RC1(I+4)
                                                                        
        DD2 = DB1(I) + DC1(I)
        DD3 = DB1(I+1) + DC1(I+1)
        DD4 = DB1(I+2) + DC1(I+2)
        DD5 = DB1(I+3) + DC1(I+3)
        DD1 = DB1(I+4) + DC1(I+4)
        RR2 = RR6 * RA2(I,3)
        RR3 = RR7 * RA2(I+1,3)
        RR4 = RR8 * RA2(I+2,3)
        RR5 = RR9 * RA2(I+3,3)
        RR1 = RR10 * RA2(I+4,3)
        DA1(I) = DD2 + RR2
        DA1(I+1) = DD3 + RR3
        DA1(I+2) = DD4 + RR4
        DA1(I+3) = DD5 + RR5
        DA1(I+4) = DD1 + RR1
        RA1(I+4) = RR10
        RA1(I+3) = RR9
        RA1(I+2) = RR8
        RA1(I+1) = RR7
        RA1(I) = RR6
       END DO
                                                                        
       WRITE (6, *) '### RA1 =', RA1
       WRITE (6, *) '### IA2 =', IA2
       WRITE (6, *) '### RA2 =', RA2
       WRITE (6, *) '### DA1 =', DA1
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
                                                                        
       DO I=2,10
        RA1(I) = RB1(I) + RC1(I)
        IF (RA1(I) .GT. RB1(I) * 2.) THEN
         S = RA1(I)
        END IF
       END DO
                                                                        
       DO J=2,7,4
        DO I=2,8,3
         DD6 = DA2(I,J-1) * DB2(I,J)
         DD7 = DA2(I+1,J-1) * DB2(I+1,J)
         DD8 = DA2(I+2,J-1) * DB2(I+2,J)
         DD9 = DD6 * DB2(I,J+1)
         DD10 = DD7 * DB2(I+1,J+1)
         DD11 = DD8 * DB2(I+2,J+1)
         DD12 = DD9 * DB2(I,J+2)
         DD13 = DD10 * DB2(I+1,J+2)
         DD14 = DD11 * DB2(I+2,J+2)
         DD15 = DD12 * DB2(I,J+3)
         DD16 = DD13 * DB2(I+1,J+3)
         DA2(I+2,J+3) = DD14 * DB2(I+2,J+3)
         DA2(I+1,J+3) = DD16
         DA2(I,J+3) = DD15
         DA2(I+2,J+2) = DD14
         DA2(I+1,J+2) = DD13
         DA2(I,J+2) = DD12
         DA2(I+2,J+1) = DD11
         DA2(I+1,J+1) = DD10
         DA2(I,J+1) = DD9
         DA2(I+2,J) = DD8
         DA2(I+1,J) = DD7
         DA2(I,J) = DD6
        END DO
       END DO
       DO I=2,8,3
        DD17 = DA2(I,9) * DB2(I,10)
        DD18 = DA2(I+1,9) * DB2(I+1,10)
        DA2(I+2,10) = DA2(I+2,9) * DB2(I+2,10)
        DA2(I+1,10) = DD18
        DA2(I,10) = DD17
       END DO
                                                                        
C$OMP PARALLEL SHARED (IC3,IA3,IB3) PRIVATE (K,J,I)
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=2,7,4
                                                                        
                                                                        
                                                                        
         DO I=2,10
          IF (IC3(I,J,K) .NE. 0) THEN
           IA3(I,J,K) = MOD (MOD (IB3(I,J,K), IC3(I,J,K)), IC3(I,J,K))
          END IF
          IF (IC3(I,J+1,K) .NE. 0) THEN
           IA3(I,J+1,K) = MOD (MOD (IB3(I,J+1,K), IC3(I,J+1,K)), IC3(I,J
     X       +1,K))
          END IF
          IF (IC3(I,J+2,K) .NE. 0) THEN
           IA3(I,J+2,K) = MOD (MOD (IB3(I,J+2,K), IC3(I,J+2,K)), IC3(I,J
     X       +2,K))
          END IF
          IF (IC3(I,J+3,K) .NE. 0) THEN
           IA3(I,J+3,K) = MOD (MOD (IB3(I,J+3,K), IC3(I,J+3,K)), IC3(I,J
     X       +3,K))
          END IF
         END DO
        END DO
                                                                        
                                                                        
                                                                        
        DO I=2,10
         IF (IC3(I,10,K) .NE. 0) THEN
          IA3(I,10,K) = MOD (MOD (IB3(I,10,K), IC3(I,10,K)), IC3(I,10,K)
     X      )
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       DO J=2,7,4
                                                                        
                                                                        
                                                                        
        DO I=2,8,3
                                                                        
         RA2(I,J) = RB2(I,J) + RC2(I,J)
         RA2(I+1,J) = RB2(I+1,J) + RC2(I+1,J)
         RA2(I+2,J) = RB2(I+2,J) + RC2(I+2,J)
         RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
         RA2(I+1,J+1) = RB2(I+1,J+1) + RC2(I+1,J+1)
         RA2(I+2,J+1) = RB2(I+2,J+1) + RC2(I+2,J+1)
         RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
         RA2(I+1,J+2) = RB2(I+1,J+2) + RC2(I+1,J+2)
         RA2(I+2,J+2) = RB2(I+2,J+2) + RC2(I+2,J+2)
         RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
         RA2(I+1,J+3) = RB2(I+1,J+3) + RC2(I+1,J+3)
         RA2(I+2,J+3) = RB2(I+2,J+3) + RC2(I+2,J+3)
        END DO
       END DO
                                                                        
                                                                        
                                                                        
       DO I=2,8,3
                                                                        
        RA2(I,10) = RB2(I,10) + RC2(I,10)
        RA2(I+1,10) = RB2(I+1,10) + RC2(I+1,10)
        RA2(I+2,10) = RB2(I+2,10) + RC2(I+2,10)
       END DO
                                                                        
       WRITE (6, *) '### S  = ', S
       WRITE (6, *) '### IA3= ', IA3
       WRITE (6, *) '### DA2= ', DA2
       WRITE (6, *) '### RA2= ', RA2
                                                                        
                                                                        
       STOP 
      END
 
 
 
