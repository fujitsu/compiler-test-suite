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
       LOGICAL*4 LA3(10,10,10), LB3(10,10,10), LC3(10,10,10)
       INTEGER IDX3, IDX2, IDX1
       PARAMETER (IDX3 = 10, IDX2 = 10, IDX1 = 10)
       COMMON /CV5296K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR11, LB3, LA3
       INTEGER II5, II4, II3, II2, II1, I1
       REAL S1, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, 
     X   DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, 
     X   DD4, DD3, DD2, DD1
       LOGICAL LL2, LL1
       REAL RR11 (86)
                                                       
       DO I1=1,6,5
        RB1(I1) = I1 + 3
        RB1(I1+1) = I1 + 4
        RB1(I1+2) = I1 + 5
        RB1(I1+3) = I1 + 6
        RB1(I1+4) = I1 + 7
        RC1(I1) = I1 + 4
        RC1(I1+1) = I1 + 5
        RC1(I1+2) = I1 + 6
        RC1(I1+3) = I1 + 7
        RC1(I1+4) = I1 + 8
       END DO
                                                                        
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
                                                                        
                                                       
        DO I1=1,6,5
         DA2(I1,J) = I1 * J - 2
         DA2(I1+1,J) = (I1 + 1) * J - 2
         DA2(I1+2,J) = (I1 + 2) * J - 2
         DA2(I1+3,J) = (I1 + 3) * J - 2
         DA2(I1+4,J) = (I1 + 4) * J - 2
         DA2(I1,J+1) = I1 * II1 - 2
         DA2(I1+1,J+1) = (I1 + 1) * II1 - 2
         DA2(I1+2,J+1) = (I1 + 2) * II1 - 2
         DA2(I1+3,J+1) = (I1 + 3) * II1 - 2
         DA2(I1+4,J+1) = (I1 + 4) * II1 - 2
         DA2(I1,J+2) = I1 * II2 - 2
         DA2(I1+1,J+2) = (I1 + 1) * II2 - 2
         DA2(I1+2,J+2) = (I1 + 2) * II2 - 2
         DA2(I1+3,J+2) = (I1 + 3) * II2 - 2
         DA2(I1+4,J+2) = (I1 + 4) * II2 - 2
         DA2(I1,J+3) = I1 * II3 - 2
         DA2(I1+1,J+3) = (I1 + 1) * II3 - 2
         DA2(I1+2,J+3) = (I1 + 2) * II3 - 2
         DA2(I1+3,J+3) = (I1 + 3) * II3 - 2
         DA2(I1+4,J+3) = (I1 + 4) * II3 - 2
        END DO
       END DO
       DO J=9,10,1
                                                                        
                                                       
        DO I1=1,6,5
         DA2(I1,J) = I1 * J - 2
         DA2(I1+1,J) = (I1 + 1) * J - 2
         DA2(I1+2,J) = (I1 + 2) * J - 2
         DA2(I1+3,J) = (I1 + 3) * J - 2
         DA2(I1+4,J) = (I1 + 4) * J - 2
        END DO
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA3) PRIVATE (K,J,I1)
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,7,4
                                                                        
                                                       
         DO I1=1,6,5
          RA3(I1,J,K) = I1 + J + K
          RA3(I1+1,J,K) = I1 + J + K + 1
          RA3(I1+2,J,K) = I1 + J + K + 2
          RA3(I1+3,J,K) = I1 + J + K + 3
          RA3(I1+4,J,K) = I1 + J + K + 4
          RA3(I1,J+1,K) = I1 + J + K + 1
          RA3(I1+1,J+1,K) = I1 + J + K + 2
          RA3(I1+2,J+1,K) = I1 + J + K + 3
          RA3(I1+3,J+1,K) = I1 + J + K + 4
          RA3(I1+4,J+1,K) = I1 + J + K + 5
          RA3(I1,J+2,K) = I1 + J + K + 2
          RA3(I1+1,J+2,K) = I1 + J + K + 3
          RA3(I1+2,J+2,K) = I1 + J + K + 4
          RA3(I1+3,J+2,K) = I1 + J + K + 5
          RA3(I1+4,J+2,K) = I1 + J + K + 6
          RA3(I1,J+3,K) = I1 + J + K + 3
          RA3(I1+1,J+3,K) = I1 + J + K + 4
          RA3(I1+2,J+3,K) = I1 + J + K + 5
          RA3(I1+3,J+3,K) = I1 + J + K + 6
          RA3(I1+4,J+3,K) = I1 + J + K + 7
         END DO
        END DO
        DO J=9,10,1
                                                                        
                                                       
         DO I1=1,6,5
          RA3(I1,J,K) = I1 + J + K
          RA3(I1+1,J,K) = I1 + J + K + 1
          RA3(I1+2,J,K) = I1 + J + K + 2
          RA3(I1+3,J,K) = I1 + J + K + 3
          RA3(I1+4,J,K) = I1 + J + K + 4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
       RC1(7) = 4.
       RB1(7) = 12.
                                                                        
                                                                        
       S = 3.
       ASUM = 3.
       DO I1=1,6,5
        ASUM = ASUM + RB1(I1)
        ASUM = ASUM + RB1(I1+1)
        ASUM = ASUM + RB1(I1+2)
        ASUM = ASUM + RB1(I1+3)
        ASUM = ASUM + RB1(I1+4)
       END DO
                                                                        
       LL2 = .FALSE.
       II5 = 0
C$OMP PARALLEL SHARED (RC1,RB1,RA3,LL2,II5,S) PRIVATE (RR1,RR2,RR3,RR4,J
C$OMP& ,I1,K,S1,LL1,II4)
       LL1 = .FALSE.
C$OMP DO 
       DO J=1,10
                                                                        
        IF (RC1(J) .GT. 0) THEN
         RR1 = RB1(J) + RC1(J)
         DO I1=1,10
          DO K=2,8,3
           RA3(I1,J,K) = RA3(I1,J,K-1)
           RA3(I1,J,K+1) = RA3(I1,J,K)
           RA3(I1,J,K+2) = RA3(I1,J,K+1)
          END DO
          LL1 = .TRUE.
          II4 = J
          S1 = RR1
         END DO
        ELSE
         DO K=2,10
          DO I1=1,7,4
           RR2 = RA3(I1,J,K-1)
           RR3 = RA3(I1+1,J,K-1)
           RR4 = RA3(I1+2,J,K-1)
           RA3(I1+3,J,K) = RA3(I1+3,J,K-1)
           RA3(I1+2,J,K) = RR4
           RA3(I1+1,J,K) = RR3
           RA3(I1,J,K) = RR2
          END DO
          RA3(9,J,K) = RA3(9,J,K-1)
          RA3(10,J,K) = RA3(10,J,K-1)
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II6)
       IF (LL1) THEN
        IF (LL2) THEN
         IF (II4 .GT. II5) THEN
          S = S1
          II5 = II4
         END IF
        ELSE
         S = S1
         II5 = II4
         LL2 = .TRUE.
        END IF
       END IF
C$OMP END CRITICAL (II6)
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) S
       WRITE (6, *) ASUM
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
       SSS = -15.
       DO J=1,10
                                                                        
        IF (RC1(J) .GT. 0) THEN
         SSS = RC1(J)
                                                                        
         DO I1=1,6,5
          DO K=2,8,3
           RA3(I1,J,K) = RA3(I1,J,K-1)
           RA3(I1+1,J,K) = RA3(I1+1,J,K-1)
           RA3(I1+2,J,K) = RA3(I1+2,J,K-1)
           RA3(I1+3,J,K) = RA3(I1+3,J,K-1)
           RA3(I1+4,J,K) = RA3(I1+4,J,K-1)
           RA3(I1,J,K+1) = RA3(I1,J,K)
           RA3(I1+1,J,K+1) = RA3(I1+1,J,K)
           RA3(I1+2,J,K+1) = RA3(I1+2,J,K)
           RA3(I1+3,J,K+1) = RA3(I1+3,J,K)
           RA3(I1+4,J,K+1) = RA3(I1+4,J,K)
           RA3(I1,J,K+2) = RA3(I1,J,K+1)
           RA3(I1+1,J,K+2) = RA3(I1+1,J,K+1)
           RA3(I1+2,J,K+2) = RA3(I1+2,J,K+1)
           RA3(I1+3,J,K+2) = RA3(I1+3,J,K+1)
           RA3(I1+4,J,K+2) = RA3(I1+4,J,K+1)
          END DO
         END DO
        ELSE
         DO K=2,10
          DO I1=1,7,4
           RR5 = RA3(I1,J,K-1)
           RR6 = RA3(I1+1,J,K-1)
           RR7 = RA3(I1+2,J,K-1)
           RA3(I1+3,J,K) = RA3(I1+3,J,K-1)
           RA3(I1+2,J,K) = RR7
           RA3(I1+1,J,K) = RR6
           RA3(I1,J,K) = RR5
          END DO
          RA3(9,J,K) = RA3(9,J,K-1)
          RA3(10,J,K) = RA3(10,J,K-1)
         END DO
        END IF
       END DO
                                                                        
       WRITE (6, *) SSS
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
       SSS = -15.
       DO J=1,10
                                                                        
        IF (RC1(J) .GT. 0) THEN
         SSS = RC1(J)
                                                                        
         DO I1=1,6,5
          DO K=2,8,3
           RA3(I1,J,K) = RA3(I1,J,K-1)
           RA3(I1+1,J,K) = RA3(I1+1,J,K-1)
           RA3(I1+2,J,K) = RA3(I1+2,J,K-1)
           RA3(I1+3,J,K) = RA3(I1+3,J,K-1)
           RA3(I1+4,J,K) = RA3(I1+4,J,K-1)
           RA3(I1,J,K+1) = RA3(I1,J,K)
           RA3(I1+1,J,K+1) = RA3(I1+1,J,K)
           RA3(I1+2,J,K+1) = RA3(I1+2,J,K)
           RA3(I1+3,J,K+1) = RA3(I1+3,J,K)
           RA3(I1+4,J,K+1) = RA3(I1+4,J,K)
           RA3(I1,J,K+2) = RA3(I1,J,K+1)
           RA3(I1+1,J,K+2) = RA3(I1+1,J,K+1)
           RA3(I1+2,J,K+2) = RA3(I1+2,J,K+1)
           RA3(I1+3,J,K+2) = RA3(I1+3,J,K+1)
           RA3(I1+4,J,K+2) = RA3(I1+4,J,K+1)
          END DO
         END DO
        ELSE
         DO K=2,10
          DO I1=1,7,4
           RR8 = RA3(I1,J,K-1)
           RR9 = RA3(I1+1,J,K-1)
           RR10 = RA3(I1+2,J,K-1)
           RA3(I1+3,J,K) = RA3(I1+3,J,K-1)
           RA3(I1+2,J,K) = RR10
           RA3(I1+1,J,K) = RR9
           RA3(I1,J,K) = RR8
          END DO
          RA3(9,J,K) = RA3(9,J,K-1)
          RA3(10,J,K) = RA3(10,J,K-1)
         END DO
        END IF
       END DO
                                                                        
       WRITE (6, *) SSS
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.4 -----'
                                                                        
       SSS = -15.
       DO K=2,7,4
                                                                        
        DO J=1,6,5
         DD1 = DA2(J,K-1)
         DD2 = DA2(J+1,K-1)
         DD3 = DA2(J+2,K-1)
         DD4 = DA2(J+3,K-1)
         DD5 = DA2(J+4,K-1)
         DD6 = DD1
         DD7 = DD2
         DD8 = DD3
         DD9 = DD4
         DD10 = DD5
         DD11 = DD6
         DD12 = DD7
         DD13 = DD8
         DD14 = DD9
         DD15 = DD10
         DD16 = DD11
         DD17 = DD12
         DD18 = DD13
         DD19 = DD14
         DA2(J+4,K+3) = DD15
         DA2(J+3,K+3) = DD19
         DA2(J+2,K+3) = DD18
         DA2(J+1,K+3) = DD17
         DA2(J,K+3) = DD16
         DA2(J+4,K+2) = DD15
         DA2(J+3,K+2) = DD14
         DA2(J+2,K+2) = DD13
         DA2(J+1,K+2) = DD12
         DA2(J,K+2) = DD11
         DA2(J+4,K+1) = DD10
         DA2(J+3,K+1) = DD9
         DA2(J+2,K+1) = DD8
         DA2(J+1,K+1) = DD7
         DA2(J,K+1) = DD6
         DA2(J+4,K) = DD5
         DA2(J+3,K) = DD4
         DA2(J+2,K) = DD3
         DA2(J+1,K) = DD2
         DA2(J,K) = DD1
        END DO
       END DO
                                                                        
       DO J=1,6,5
        DD20 = DA2(J,9)
        DD21 = DA2(J+1,9)
        DD22 = DA2(J+2,9)
        DD23 = DA2(J+3,9)
        DA2(J+4,10) = DA2(J+4,9)
        DA2(J+3,10) = DD23
        DA2(J+2,10) = DD22
        DA2(J+1,10) = DD21
        DA2(J,10) = DD20
       END DO
       DO J=1,10
                                                                        
        IF (RC1(J) .GT. 0) THEN
         SSS = RC1(J)
        END IF
       END DO
                                                                        
                                                                        
       WRITE (6, *) SSS
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.5 -----'
                                                                        
       SSS = -15.
                                                                        
       DO J=1,10
        IF (RC1(J) .GT. 0) THEN
         SSS = RC1(J)
        END IF
       END DO
                                                                        
                                                                        
       WRITE (6, *) SSS
                                                                        
                                                                        
       STOP 
      END
