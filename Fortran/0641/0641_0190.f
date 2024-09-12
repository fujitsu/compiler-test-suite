      PROGRAM MAIN


       PARAMETER (L1 = 3, L2 = 3, L3 = 3)
       INTEGER*4 IA1(3), IB1(3), IC1(3)
       INTEGER*4 IA2(3,3), IB2(3,3), IC2(3,3)
       REAL*4 RM1(3), RM2(3), RM3(3)
       REAL*4 RM4(3), RM5(3), RM6(3), RM7(3)
       REAL*4 RA1(3), RB1(3), RC1(3)
       REAL*4 RA2(3,3), RB2(3,3), RC2(3,3)
       REAL*4 RA3(3,3,3), RB3(3,3,3), RC3(3,3,3)
       REAL*8 DA1(3), DB1(3), DC1(3), DP1(3), DM1(3)
       REAL*8 DA2(3,3), DB2(3,3), DC2(3,3)
       REAL*8 DA3(3,3,3), DB3(3,3,3), DC3(3,3,3)
       REAL*8 QA2(3,3), QB2(3,3), QC2(3,3)
       COMPLEX CA1(3), CB1(3), CC1(3)
       COMPLEX CA2(3,3), CB2(3,3), CC2(3,3)
       COMPLEX CA3(3,3,3), CB3(3,3,3), CC3(3,3,3)
       LOGICAL*4 LA3(3,3,3), LB3(3,3,3), LC3(3,3,3)
       REAL RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       LOGICAL LL3, LL2, LL1
                                                                        
                                                       
       RM5(1) = 6.
       RM5(2) = 7.
       RM5(3) = 8.
       RC1(1) = 5.
       RC1(2) = 6.
       RC1(3) = 7.
                                                                        
       DA2(1,1) = -1D0
       DA2(2,1) = 0D0
       DA2(3,1) = 1D0
       DA2(1,2) = 0D0
       DA2(2,2) = 2D0
       DA2(3,2) = 4D0
       DA2(1,3) = 1D0
       DA2(2,3) = 4D0
       DA2(3,3) = 7D0
                                                                        
       DO K=1,3
        LL1 = 1 .GT. K
        LL2 = 2 .GT. K
        LL3 = 3 .GT. K
        RA3(1,1,K) = K + 2
        RA3(2,1,K) = K + 3
        RA3(3,1,K) = K + 4
        RA3(1,2,K) = K + 3
        RA3(2,2,K) = K + 4
        RA3(3,2,K) = K + 5
        RA3(1,3,K) = K + 4
        RA3(2,3,K) = K + 5
        RA3(3,3,K) = K + 6
        RB3(1,1,K) = K
        RB3(2,1,K) = K + 1
        RB3(3,1,K) = K + 2
        RB3(1,2,K) = K - 1
        RB3(2,2,K) = K
        RB3(3,2,K) = K + 1
        RB3(1,3,K) = K - 2
        RB3(2,3,K) = K - 1
        RB3(3,3,K) = K
        RC3(1,1,K) = 2 - K
        RC3(2,1,K) = 3 - K
        RC3(3,1,K) = 4 - K
        RC3(1,2,K) = 3 - K
        RC3(2,2,K) = 4 - K
        RC3(3,2,K) = 5 - K
        RC3(1,3,K) = 4 - K
        RC3(2,3,K) = 5 - K
        RC3(3,3,K) = 6 - K
        DA3(1,1,K) = 2 - K
        DA3(2,1,K) = 3 - K
        DA3(3,1,K) = 4 - K
        DA3(1,2,K) = 3 - K
        DA3(2,2,K) = 4 - K
        DA3(3,2,K) = 5 - K
        DA3(1,3,K) = 4 - K
        DA3(2,3,K) = 5 - K
        DA3(3,3,K) = 6 - K
        DB3(1,1,K) = K + 1
        DB3(2,1,K) = K + 2
        DB3(3,1,K) = K + 3
        DB3(1,2,K) = K + 2
        DB3(2,2,K) = K + 4
        DB3(3,2,K) = K + 6
        DB3(1,3,K) = K + 3
        DB3(2,3,K) = K + 6
        DB3(3,3,K) = K + 9
        LA3(1,1,K) = LL1
        LA3(2,1,K) = LL1
        LA3(3,1,K) = LL1
        LA3(1,2,K) = LL2
        LA3(2,2,K) = LL2
        LA3(3,2,K) = LL2
        LA3(1,3,K) = LL3
        LA3(2,3,K) = LL3
        LA3(3,3,K) = LL3
       END DO
                                                                        
       WRITE (6, *) '----- TEST NO.1 -----'
C$OMP PARALLEL SHARED (DP1,DM1,DA2,RC1,LA3,DB3,DA3,RB3,RA3,RC3) 
C$OMP& PRIVATE (M8,M1,M2,M3,M4,M5,M6,M7,M9,RR1,DD1,DD2,RR2,RR3,DD3,DD4,
C$OMP& M10)
C$OMP DO 
       DO M8=1,3
                                                                        
        DO M1=1,3
                                                                        
         DO M2=1,3
          DO M3=1,3
                                                                        
           DO M4=1,3
                                                                        
            DO M5=1,3
             DO M6=1,3
                                                                        
              DO M7=1,3
               DP1(M8) = 0D0
               DM1(M8) = 0D0
                                                                        
               DO M9=1,3
                IF (DA2(M8,M9) .GT. 0.) THEN
                 DP1(M8) = DP1(M8) + DA2(M8,M9)
                ELSE
                 IF (DA2(M8,M9) .LT. 0.) THEN
                  DM1(M8) = DM1(M8) + DA2(M8,M9)
                 END IF
                END IF
               END DO
                                                                        
               RC1(M8) = RC1(M8) * 0.9
              END DO
             END DO
            END DO
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
                                                                        
C$OMP DO 
       DO M10=1,3
                                                                        
        DO M9=1,3
         DO M8=1,3
          IF (LA3(M8,M9,M10)) THEN
           DD1 = 1 / DB3(M8,M9,M10)
           DD2 = DA3(M8,M9,M10)
           RR1 = RB3(M8,M9,M10)
                                                                        
           DO M1=1,3
                                                                        
            DO M2=1,3
             DO M3=1,3
                                                                        
              DO M4=1,3
                                                                        
               DO M5=1,3
                DO M6=1,3
                                                                        
                 DD2 = DD2 * DD1
                 DD2 = DD2 * DD1
                 DD2 = DD2 * DD1
                END DO
               END DO
              END DO
             END DO
            END DO
           END DO
           RA3(M8,M9,M10) = RR1
           DA3(M8,M9,M10) = DD2
          ELSE
           RR2 = RC3(M8,M9,M10)
           RR3 = RA3(M8,M9,M10)
           DD3 = 1 / DB3(M8,M9,M10)
           DD4 = DA3(M8,M9,M10)
           DO M1=1,3
            DO M2=1,3
             DO M3=1,3
              DO M4=1,3
               DO M5=1,3
                DO M6=1,3
                 RR3 = RR3 + RR2
                 DD4 = DD4 * DD3
                 RR3 = RR3 + RR2
                 DD4 = DD4 * DD3
                 RR3 = RR3 + RR2
                 DD4 = DD4 * DD3
                END DO
               END DO
              END DO
             END DO
            END DO
           END DO
           DA3(M8,M9,M10) = DD4
           RA3(M8,M9,M10) = RR3
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       RR4 = RM5(1)
       RR5 = RM5(2)
       RR6 = RM5(3)
                                                                        
       DO M1=1,3
                                                                        
        DO M2=1,3
         DO M3=1,3
                                                                        
                                                                        
          RR4 = RR4 * 1.001
          RR5 = RR5 * 1.001
          RR6 = RR6 * 1.001
          RR4 = RR4 * 1.001
          RR5 = RR5 * 1.001
          RR6 = RR6 * 1.001
          RR4 = RR4 * 1.001
          RR5 = RR5 * 1.001
          RR6 = RR6 * 1.001
         END DO
        END DO
       END DO
                                                                        
                                                                        
                                                                        

       WRITE (6, *) 'RA3 = ', RA3(3,3,3)
       WRITE (6, *) ' ==== '

       STOP 
      END
 
 
 
 
 
 
 
