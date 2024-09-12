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
       COMMON /CV5283K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR1, LB3, LA3
       INTEGER II3, II2, II1
       REAL RR1 (86)
                                                                        
       DO J=1,7,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3
                                                                        
                                                       
        DO I=1,9,2
         DA2(I,J) = I * J - 2
         DA2(I+1,J) = (I + 1) * J - 2
         DA2(I,J+1) = I * II1 - 2
         DA2(I+1,J+1) = (I + 1) * II1 - 2
         DA2(I,J+2) = I * II2 - 2
         DA2(I+1,J+2) = (I + 1) * II2 - 2
         DA2(I,J+3) = I * II3 - 2
         DA2(I+1,J+3) = (I + 1) * II3 - 2
         DB2(I,J) = I - J - 3
         DB2(I+1,J) = I - J - 2
         DB2(I,J+1) = I - J - 4
         DB2(I+1,J+1) = I - J - 3
         DB2(I,J+2) = I - J - 5
         DB2(I+1,J+2) = I - J - 4
         DB2(I,J+3) = I - J - 6
         DB2(I+1,J+3) = I - J - 5
         DC2(I,J) = I + J - 4
         DC2(I+1,J) = I + J - 3
         DC2(I,J+1) = I + J - 3
         DC2(I+1,J+1) = I + J - 2
         DC2(I,J+2) = I + J - 2
         DC2(I+1,J+2) = I + J - 1
         DC2(I,J+3) = I + J - 1
         DC2(I+1,J+3) = I + J
        END DO
       END DO
       DO J=9,10,1
                                                                        
                                                       
        DO I=1,6,5
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
         DC2(I,J) = I + J - 4
         DC2(I+1,J) = I + J - 3
         DC2(I+2,J) = I + J - 2
         DC2(I+3,J) = I + J - 1
         DC2(I+4,J) = I + J
        END DO
       END DO

       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
                                                                        
C$OMP PARALLEL SHARED (DB2,DC2,DA2) PRIVATE (IDMY,J,I,K)
C$OMP DO LASTPRIVATE (DA2)
       DO IDMY=1,100
        DO J=1,10
         DO I=1,10
          DA2(I,J) = 0D0
          DO K=1,6,5
           DA2(I,J) = DA2(I,J) + DB2(I,K) * DC2(K,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+1) * DC2(K+1,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+2) * DC2(K+2,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+3) * DC2(K+3,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+4) * DC2(K+4,J)
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) ' DA2 =', DA2
                                                                        

       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
                                                        
C$OMP PARALLEL SHARED (DB2,DC2,DA2) PRIVATE (IDMY,J,I,K)
C$OMP DO LASTPRIVATE (DA2)
       DO IDMY=1,100
        DO J=1,10
         DO I=1,10
          DA2(I,J) = 0D0
          DO K=1,6,5
           DA2(I,J) = DA2(I,J) + DB2(I,K) * DC2(K,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+1) * DC2(K+1,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+2) * DC2(K+2,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+3) * DC2(K+3,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+4) * DC2(K+4,J)
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
                                                                        
       WRITE (6, *) ' DA2 =', DA2
                                                                        

       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
C$OMP PARALLEL SHARED (DB2,DC2,DA2) PRIVATE (IDMY,J,I,K)
C$OMP DO LASTPRIVATE (DA2)
       DO IDMY=1,100
        DO J=1,10
         DO I=1,10
          DA2(I,J) = 0D0
          DO K=1,7,3
           DA2(I,J) = DA2(I,J) + DB2(I,K) * DC2(K,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+1) * DC2(K+1,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+2) * DC2(K+2,J)
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
                                                                        
       WRITE (6, *) ' DA2 =', DA2
                                                                        

       WRITE (6, *) '----- TEST NO.4 -----'
                                                                        
C$OMP PARALLEL SHARED (DB2,DC2,DA2) PRIVATE (IDMY,J,I,K)
C$OMP DO LASTPRIVATE (DA2)
       DO IDMY=1,100
        DO J=1,10
         DO I=1,10
          DA2(I,J) = 0D0
          DO K=1,6,5
           DA2(I,J) = DA2(I,J) + DB2(I,K) * DC2(K,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+1) * DC2(K+1,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+2) * DC2(K+2,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+3) * DC2(K+3,J)
           DA2(I,J) = DA2(I,J) + DB2(I,K+4) * DC2(K+4,J)
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
                                                                        
       WRITE (6, *) ' DA2 =', DA2
                                                                        
       STOP 
      END
 
 
 
 
 
 
