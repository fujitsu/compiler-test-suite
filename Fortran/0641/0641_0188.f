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
       COMMON /CV5295K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR10, LB3, LA3
       INTEGER II2, II1
       REAL S1, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL2, LL1
       REAL RR10 (86)
                                                                        
                                                       
       DO I=1,6,5
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
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA3,RB3,RC3) PRIVATE (K,J,I)
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,7,4
                                                                        
                                                       
         DO I=1,9,2
          RA3(I,J,K) = I + J + K
          RA3(I+1,J,K) = I + J + K + 1
          RA3(I,J+1,K) = I + J + K + 1
          RA3(I+1,J+1,K) = I + J + K + 2
          RA3(I,J+2,K) = I + J + K + 2
          RA3(I+1,J+2,K) = I + J + K + 3
          RA3(I,J+3,K) = I + J + K + 3
          RA3(I+1,J+3,K) = I + J + K + 4
          RB3(I,J,K) = I - J + K
          RB3(I+1,J,K) = I - J + K + 1
          RB3(I,J+1,K) = I - J + K - 1
          RB3(I+1,J+1,K) = I - J + K
          RB3(I,J+2,K) = I - J + K - 2
          RB3(I+1,J+2,K) = I - J + K - 1
          RB3(I,J+3,K) = I - J + K - 3
          RB3(I+1,J+3,K) = I - J + K - 2
          RC3(I,J,K) = I + J - K
          RC3(I+1,J,K) = I + J - K + 1
          RC3(I,J+1,K) = I + J - K + 1
          RC3(I+1,J+1,K) = I + J - K + 2
          RC3(I,J+2,K) = I + J - K + 2
          RC3(I+1,J+2,K) = I + J - K + 3
          RC3(I,J+3,K) = I + J - K + 3
          RC3(I+1,J+3,K) = I + J - K + 4
         END DO
        END DO
        DO J=9,10,1
                                                                        
                                                       
         DO I=1,6,5
          RA3(I,J,K) = I + J + K
          RA3(I+1,J,K) = I + J + K + 1
          RA3(I+2,J,K) = I + J + K + 2
          RA3(I+3,J,K) = I + J + K + 3
          RA3(I+4,J,K) = I + J + K + 4
          RB3(I,J,K) = I - J + K
          RB3(I+1,J,K) = I - J + K + 1
          RB3(I+2,J,K) = I - J + K + 2
          RB3(I+3,J,K) = I - J + K + 3
          RB3(I+4,J,K) = I - J + K + 4
          RC3(I,J,K) = I + J - K
          RC3(I+1,J,K) = I + J - K + 1
          RC3(I+2,J,K) = I + J - K + 2
          RC3(I+3,J,K) = I + J - K + 3
          RC3(I+4,J,K) = I + J - K + 4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
                                                                        
       DO I=1,6,5
        RA1(I) = RB1(I) + RC1(I)
        RA1(I+1) = RB1(I+1) + RC1(I+1)
        RA1(I+2) = RB1(I+2) + RC1(I+2)
        RA1(I+3) = RB1(I+3) + RC1(I+3)
        RA1(I+4) = RB1(I+4) + RC1(I+4)
       END DO
       S = RA1(10)
                                                                        
       WRITE (6, *) S
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
C$OMP PARALLEL SHARED (RA3,RB3,RC3) PRIVATE (K,J,I)
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,7,4
                                                                        
                                                                        
         DO I=1,6,5
          RA3(I,J,K) = RB3(I,J,K) + RC3(I,J,K)
          RA3(I+1,J,K) = RB3(I+1,J,K) + RC3(I+1,J,K)
          RA3(I+2,J,K) = RB3(I+2,J,K) + RC3(I+2,J,K)
          RA3(I+3,J,K) = RB3(I+3,J,K) + RC3(I+3,J,K)
          RA3(I+4,J,K) = RB3(I+4,J,K) + RC3(I+4,J,K)
          RA3(I,J+1,K) = RB3(I,J+1,K) + RC3(I,J+1,K)
          RA3(I+1,J+1,K) = RB3(I+1,J+1,K) + RC3(I+1,J+1,K)
          RA3(I+2,J+1,K) = RB3(I+2,J+1,K) + RC3(I+2,J+1,K)
          RA3(I+3,J+1,K) = RB3(I+3,J+1,K) + RC3(I+3,J+1,K)
          RA3(I+4,J+1,K) = RB3(I+4,J+1,K) + RC3(I+4,J+1,K)
          RA3(I,J+2,K) = RB3(I,J+2,K) + RC3(I,J+2,K)
          RA3(I+1,J+2,K) = RB3(I+1,J+2,K) + RC3(I+1,J+2,K)
          RA3(I+2,J+2,K) = RB3(I+2,J+2,K) + RC3(I+2,J+2,K)
          RA3(I+3,J+2,K) = RB3(I+3,J+2,K) + RC3(I+3,J+2,K)
          RA3(I+4,J+2,K) = RB3(I+4,J+2,K) + RC3(I+4,J+2,K)
          RA3(I,J+3,K) = RB3(I,J+3,K) + RC3(I,J+3,K)
          RA3(I+1,J+3,K) = RB3(I+1,J+3,K) + RC3(I+1,J+3,K)
          RA3(I+2,J+3,K) = RB3(I+2,J+3,K) + RC3(I+2,J+3,K)
          RA3(I+3,J+3,K) = RB3(I+3,J+3,K) + RC3(I+3,J+3,K)
          RA3(I+4,J+3,K) = RB3(I+4,J+3,K) + RC3(I+4,J+3,K)
         END DO
        END DO
        DO J=9,10,1
                                                                        
                                                                        
         DO I=1,6,5
          RA3(I,J,K) = RB3(I,J,K) + RC3(I,J,K)
          RA3(I+1,J,K) = RB3(I+1,J,K) + RC3(I+1,J,K)
          RA3(I+2,J,K) = RB3(I+2,J,K) + RC3(I+2,J,K)
          RA3(I+3,J,K) = RB3(I+3,J,K) + RC3(I+3,J,K)
          RA3(I+4,J,K) = RB3(I+4,J,K) + RC3(I+4,J,K)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       DO J=1,10
        RR1 = RB1(J) + RC1(J)
                                                                        
                                                                        
        RA1(J) = RR1
       END DO
       S = RA1(10)
                                                                        
       WRITE (6, *) S
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
       ASUM = 0.
       DO I=1,6,5
        ASUM = ASUM + RB1(I)
        ASUM = ASUM + RB1(I+1)
        ASUM = ASUM + RB1(I+2)
        ASUM = ASUM + RB1(I+3)
        ASUM = ASUM + RB1(I+4)
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA3,RB3,RC3) PRIVATE (K,J,I)
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,7,4
         DO I=1,6,5
          RA3(I,J,K) = RB3(I,J,K) + RC3(I,J,K)
          RA3(I+1,J,K) = RB3(I+1,J,K) + RC3(I+1,J,K)
          RA3(I+2,J,K) = RB3(I+2,J,K) + RC3(I+2,J,K)
          RA3(I+3,J,K) = RB3(I+3,J,K) + RC3(I+3,J,K)
          RA3(I+4,J,K) = RB3(I+4,J,K) + RC3(I+4,J,K)
          RA3(I,J+1,K) = RB3(I,J+1,K) + RC3(I,J+1,K)
          RA3(I+1,J+1,K) = RB3(I+1,J+1,K) + RC3(I+1,J+1,K)
          RA3(I+2,J+1,K) = RB3(I+2,J+1,K) + RC3(I+2,J+1,K)
          RA3(I+3,J+1,K) = RB3(I+3,J+1,K) + RC3(I+3,J+1,K)
          RA3(I+4,J+1,K) = RB3(I+4,J+1,K) + RC3(I+4,J+1,K)
          RA3(I,J+2,K) = RB3(I,J+2,K) + RC3(I,J+2,K)
          RA3(I+1,J+2,K) = RB3(I+1,J+2,K) + RC3(I+1,J+2,K)
          RA3(I+2,J+2,K) = RB3(I+2,J+2,K) + RC3(I+2,J+2,K)
          RA3(I+3,J+2,K) = RB3(I+3,J+2,K) + RC3(I+3,J+2,K)
          RA3(I+4,J+2,K) = RB3(I+4,J+2,K) + RC3(I+4,J+2,K)
          RA3(I,J+3,K) = RB3(I,J+3,K) + RC3(I,J+3,K)
          RA3(I+1,J+3,K) = RB3(I+1,J+3,K) + RC3(I+1,J+3,K)
          RA3(I+2,J+3,K) = RB3(I+2,J+3,K) + RC3(I+2,J+3,K)
          RA3(I+3,J+3,K) = RB3(I+3,J+3,K) + RC3(I+3,J+3,K)
          RA3(I+4,J+3,K) = RB3(I+4,J+3,K) + RC3(I+4,J+3,K)
         END DO
        END DO
        DO J=9,10,1
         DO I=1,6,5
          RA3(I,J,K) = RB3(I,J,K) + RC3(I,J,K)
          RA3(I+1,J,K) = RB3(I+1,J,K) + RC3(I+1,J,K)
          RA3(I+2,J,K) = RB3(I+2,J,K) + RC3(I+2,J,K)
          RA3(I+3,J,K) = RB3(I+3,J,K) + RC3(I+3,J,K)
          RA3(I+4,J,K) = RB3(I+4,J,K) + RC3(I+4,J,K)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       DO J=1,10
        RR2 = RB1(J) + RC1(J)
        RA1(J) = RR2
       END DO
       S = RA1(10)
                                                                        
       WRITE (6, *) S
       WRITE (6, *) ASUM
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.4 -----'
       S = 3.
       ASUM = 3.
       DO I=1,6,5
        ASUM = ASUM + RB1(I)
        ASUM = ASUM + RB1(I+1)
        ASUM = ASUM + RB1(I+2)
        ASUM = ASUM + RB1(I+3)
        ASUM = ASUM + RB1(I+4)
       END DO
                                                                        
       LL2 = .FALSE.
       II2 = 0
C$OMP PARALLEL SHARED (RC1,RB1,RA3,LL2,II2,S) PRIVATE (RR3,RR4,RR5,RR6,J
C$OMP& ,I,K,S1,LL1,II1)
       LL1 = .FALSE.
C$OMP DO 
       DO J=1,10
                                                                        
        IF (RC1(J) .GT. 0) THEN
         RR3 = RB1(J) + RC1(J)
         DO I=1,10
                                                                        
          DO K=2,8,3
           RA3(I,J,K) = RA3(I,J,K-1)
           RA3(I,J,K+1) = RA3(I,J,K)
           RA3(I,J,K+2) = RA3(I,J,K+1)
          END DO
          LL1 = .TRUE.
          II1 = J
          S1 = RR3
         END DO
        ELSE
                                                                        
         DO K=2,10
          DO I=1,7,4
           RR4 = RA3(I,J,K-1)
           RR5 = RA3(I+1,J,K-1)
           RR6 = RA3(I+2,J,K-1)
           RA3(I+3,J,K) = RA3(I+3,J,K-1)
           RA3(I+2,J,K) = RR6
           RA3(I+1,J,K) = RR5
           RA3(I,J,K) = RR4
          END DO
          RA3(9,J,K) = RA3(9,J,K-1)
          RA3(10,J,K) = RA3(10,J,K-1)
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II3)
       IF (LL1) THEN
        IF (LL2) THEN
         IF (II1 .GT. II2) THEN
          S = S1
          II2 = II1
         END IF
        ELSE
         S = S1
         II2 = II1
         LL2 = .TRUE.
        END IF
       END IF
C$OMP END CRITICAL (II3)
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) S
       WRITE (6, *) ASUM
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.5 -----'

       SSS = 0.
       DO J=1,10
                                                                        
        IF (RC1(J) .GT. 0) THEN
         SSS = RC1(J)
                                                                        
         DO I=1,6,5
                                                                        
          DO K=2,8,3
           RA3(I,J,K) = RA3(I,J,K-1)
           RA3(I+1,J,K) = RA3(I+1,J,K-1)
           RA3(I+2,J,K) = RA3(I+2,J,K-1)
           RA3(I+3,J,K) = RA3(I+3,J,K-1)
           RA3(I+4,J,K) = RA3(I+4,J,K-1)
           RA3(I,J,K+1) = RA3(I,J,K)
           RA3(I+1,J,K+1) = RA3(I+1,J,K)
           RA3(I+2,J,K+1) = RA3(I+2,J,K)
           RA3(I+3,J,K+1) = RA3(I+3,J,K)
           RA3(I+4,J,K+1) = RA3(I+4,J,K)
           RA3(I,J,K+2) = RA3(I,J,K+1)
           RA3(I+1,J,K+2) = RA3(I+1,J,K+1)
           RA3(I+2,J,K+2) = RA3(I+2,J,K+1)
           RA3(I+3,J,K+2) = RA3(I+3,J,K+1)
           RA3(I+4,J,K+2) = RA3(I+4,J,K+1)
          END DO
         END DO
        ELSE
                                                                        
         DO K=2,10
          DO I=1,7,4
           RR7 = RA3(I,J,K-1)
           RR8 = RA3(I+1,J,K-1)
           RR9 = RA3(I+2,J,K-1)
           RA3(I+3,J,K) = RA3(I+3,J,K-1)
           RA3(I+2,J,K) = RR9
           RA3(I+1,J,K) = RR8
           RA3(I,J,K) = RR7
          END DO
          RA3(9,J,K) = RA3(9,J,K-1)
          RA3(10,J,K) = RA3(10,J,K-1)
         END DO
        END IF
       END DO
                                                                        
       WRITE (6, *) SSS
                                                                        
                                                                        
       STOP 
      END
 
 
 
 
 
 
