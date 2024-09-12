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
       COMMON /CV5281K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR6, LB3, LA3
       INTEGER II7, II6, II5, II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       LOGICAL LL4, LL3, LL2, LL1
       REAL RR6 (86)
                                                       
       DO I=1,6,5
        RC1(I) = I + 4
        RC1(I+1) = I + 5
        RC1(I+2) = I + 6
        RC1(I+3) = I + 7
        RC1(I+4) = I + 8
       END DO
                                                                        
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
                                                                        
                                                       
        DO I=1,6,5
         DA2(I,J) = I * J - 2
         DA2(I+1,J) = (I + 1) * J - 2
         DA2(I+2,J) = (I + 2) * J - 2
         DA2(I+3,J) = (I + 3) * J - 2
         DA2(I+4,J) = (I + 4) * J - 2
         DA2(I,J+1) = I * II1 - 2
         DA2(I+1,J+1) = (I + 1) * II1 - 2
         DA2(I+2,J+1) = (I + 2) * II1 - 2
         DA2(I+3,J+1) = (I + 3) * II1 - 2
         DA2(I+4,J+1) = (I + 4) * II1 - 2
         DA2(I,J+2) = I * II2 - 2
         DA2(I+1,J+2) = (I + 1) * II2 - 2
         DA2(I+2,J+2) = (I + 2) * II2 - 2
         DA2(I+3,J+2) = (I + 3) * II2 - 2
         DA2(I+4,J+2) = (I + 4) * II2 - 2
         DA2(I,J+3) = I * II3 - 2
         DA2(I+1,J+3) = (I + 1) * II3 - 2
         DA2(I+2,J+3) = (I + 2) * II3 - 2
         DA2(I+3,J+3) = (I + 3) * II3 - 2
         DA2(I+4,J+3) = (I + 4) * II3 - 2
        END DO
       END DO
       DO J=9,10,1
                                                                        
                                                       
        DO I=1,6,5
         DA2(I,J) = I * J - 2
         DA2(I+1,J) = (I + 1) * J - 2
         DA2(I+2,J) = (I + 2) * J - 2
         DA2(I+3,J) = (I + 3) * J - 2
         DA2(I+4,J) = (I + 4) * J - 2
        END DO
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA3,RB3,RC3,DA3,DB3,LA3) PRIVATE (II4,II5,LL1,LL2
C$OMP& ,LL3,II6,II7,LL4,K,J,I)
C$OMP DO 
       DO K=1,10
        II6 = K - 1
        II7 = K - 2
                                                                        
        DO J=1,8,3
         II4 = J + 1
         II5 = J + 2
         LL1 = J .GT. K
         LL2 = J .GT. II6
         LL3 = J .GT. II7
                                                                        
                                                       
         DO I=1,9,2
          RA3(I,J,K) = I + J + K
          RA3(I+1,J,K) = I + J + K + 1
          RA3(I,J+1,K) = I + J + K + 1
          RA3(I+1,J+1,K) = I + J + K + 2
          RA3(I,J+2,K) = I + J + K + 2
          RA3(I+1,J+2,K) = I + J + K + 3
          RB3(I,J,K) = I - J + K
          RB3(I+1,J,K) = I - J + K + 1
          RB3(I,J+1,K) = I - J + K - 1
          RB3(I+1,J+1,K) = I - J + K
          RB3(I,J+2,K) = I - J + K - 2
          RB3(I+1,J+2,K) = I - J + K - 1
          RC3(I,J,K) = I + J - K
          RC3(I+1,J,K) = I + J - K + 1
          RC3(I,J+1,K) = I + J - K + 1
          RC3(I+1,J+1,K) = I + J - K + 2
          RC3(I,J+2,K) = I + J - K + 2
          RC3(I+1,J+2,K) = I + J - K + 3
          DA3(I,J,K) = I + J - K
          DA3(I+1,J,K) = I + J - K + 1
          DA3(I,J+1,K) = I + J - K + 1
          DA3(I+1,J+1,K) = I + J - K + 2
          DA3(I,J+2,K) = I + J - K + 2
          DA3(I+1,J+2,K) = I + J - K + 3
          DB3(I,J,K) = I * J + K
          DB3(I+1,J,K) = (I + 1) * J + K
          DB3(I,J+1,K) = I * II4 + K
          DB3(I+1,J+1,K) = (I + 1) * II4 + K
          DB3(I,J+2,K) = I * II5 + K
          DB3(I+1,J+2,K) = (I + 1) * II5 + K
          LA3(I,J,K) = LL1
          LA3(I+1,J,K) = LL1
          LA3(I,J+1,K) = LL2
          LA3(I+1,J+1,K) = LL2
          LA3(I,J+2,K) = LL3
          LA3(I+1,J+2,K) = LL3
         END DO
        END DO
        LL4 = 10 .GT. K
                                                                        
                                                       
        DO I=1,6,5
         RA3(I,10,K) = I + K + 10
         RA3(I+1,10,K) = I + K + 11
         RA3(I+2,10,K) = I + K + 12
         RA3(I+3,10,K) = I + K + 13
         RA3(I+4,10,K) = I + K + 14
         RB3(I,10,K) = I + K - 10
         RB3(I+1,10,K) = I + K - 9
         RB3(I+2,10,K) = I + K - 8
         RB3(I+3,10,K) = I + K - 7
         RB3(I+4,10,K) = I + K - 6
         RC3(I,10,K) = I - K + 10
         RC3(I+1,10,K) = I - K + 11
         RC3(I+2,10,K) = I - K + 12
         RC3(I+3,10,K) = I - K + 13
         RC3(I+4,10,K) = I - K + 14
         DA3(I,10,K) = I - K + 10
         DA3(I+1,10,K) = I - K + 11
         DA3(I+2,10,K) = I - K + 12
         DA3(I+3,10,K) = I - K + 13
         DA3(I+4,10,K) = I - K + 14
         DB3(I,10,K) = I * 10 + K
         DB3(I+1,10,K) = I * 10 + K + 10
         DB3(I+2,10,K) = I * 10 + K + 20
         DB3(I+3,10,K) = I * 10 + K + 30
         DB3(I+4,10,K) = I * 10 + K + 40
         LA3(I,10,K) = LL4
         LA3(I+1,10,K) = LL4
         LA3(I+2,10,K) = LL4
         LA3(I+3,10,K) = LL4
         LA3(I+4,10,K) = LL4
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
                                                                        
       DO I=1,6,5
        DP1(I) = 0D0
        DM1(I) = 0D0
        DP1(I+1) = 0D0
        DM1(I+1) = 0D0
        DP1(I+2) = 0D0
        DM1(I+2) = 0D0
        DP1(I+3) = 0D0
        DM1(I+3) = 0D0
        DP1(I+4) = 0D0
        DM1(I+4) = 0D0
       END DO
                                                                        
       DO J=1,10
        DO I=1,10
         IF (DA2(I,J) .GT. 0.) THEN
          DP1(I) = DP1(I) + DA2(I,J)
         ELSE
          IF (DA2(I,J) .LT. 0.) THEN
           DM1(I) = DM1(I) + DA2(I,J)
          END IF
         END IF
        END DO
       END DO
       DO I=1,6,5
                                                                        
        RR1 = RC1(I) * RC1(I)
        RR2 = RC1(I+1) * RC1(I+1)
        RR3 = RC1(I+2) * RC1(I+2)
        RR4 = RC1(I+3) * RC1(I+3)
        RR5 = RC1(I+4) * RC1(I+4)
        RC1(I+4) = RR5
        RC1(I+3) = RR4
        RC1(I+2) = RR3
        RC1(I+1) = RR2
        RC1(I) = RR1
       END DO
                                                                        
C$OMP PARALLEL SHARED (LA3,RA3,RB3,RC3,DA3,DB3) PRIVATE (K,J,I)
C$OMP DO 
       DO K=1,10
                                                                        
        DO J=1,8,3
                                                                        
                                                                        
         DO I=1,10
          IF (LA3(I,J,K)) THEN
           RA3(I,J,K) = RA3(I,J,K) * RB3(I,J,K)
          ELSE
           RA3(I,J,K) = RA3(I,J,K) + RC3(I,J,K)
          END IF
          DA3(I,J,K) = DA3(I,J,K) / DB3(I,J,K)
          IF (LA3(I,J+1,K)) THEN
           RA3(I,J+1,K) = RA3(I,J+1,K) * RB3(I,J+1,K)
          ELSE
           RA3(I,J+1,K) = RA3(I,J+1,K) + RC3(I,J+1,K)
          END IF
          DA3(I,J+1,K) = DA3(I,J+1,K) / DB3(I,J+1,K)
          IF (LA3(I,J+2,K)) THEN
           RA3(I,J+2,K) = RA3(I,J+2,K) * RB3(I,J+2,K)
          ELSE
           RA3(I,J+2,K) = RA3(I,J+2,K) + RC3(I,J+2,K)
          END IF
          DA3(I,J+2,K) = DA3(I,J+2,K) / DB3(I,J+2,K)
         END DO
        END DO
                                                                        
                                                                        
        DO I=1,10
         IF (LA3(I,10,K)) THEN
          RA3(I,10,K) = RA3(I,10,K) * RB3(I,10,K)
         ELSE
          RA3(I,10,K) = RA3(I,10,K) + RC3(I,10,K)
         END IF
         DA3(I,10,K) = DA3(I,10,K) / DB3(I,10,K)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 



       WRITE (6, *) 'RA3 = ', RA3
       WRITE (6, *) ' ==== '

       STOP 
      END
