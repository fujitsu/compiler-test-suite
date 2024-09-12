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
       COMMON /CV5298K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR6, LB3, LA3
       INTEGER K1, J1, I1
       REAL RR5, RR4, RR3, RR2, RR1
       REAL RR6 (86)
                                                       
       DO I1=1,6,5
        IA1(I1) = I1
        IA1(I1+1) = I1 + 1
        IA1(I1+2) = I1 + 2
        IA1(I1+3) = I1 + 3
        IA1(I1+4) = I1 + 4
        IB1(I1) = I1 + 2
        IB1(I1+1) = I1 + 3
        IB1(I1+2) = I1 + 4
        IB1(I1+3) = I1 + 5
        IB1(I1+4) = I1 + 6
        RC1(I1) = I1 + 4
        RC1(I1+1) = I1 + 5
        RC1(I1+2) = I1 + 6
        RC1(I1+3) = I1 + 7
        RC1(I1+4) = I1 + 8
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA3,RB3,RC3) PRIVATE (K1,J1,I1)
C$OMP DO 
       DO K1=1,10
                                                                        
        DO J1=1,7,4
                                                                        
                                                       
         DO I1=1,9,2
          RA3(I1,J1,K1) = I1 + J1 + K1
          RA3(I1+1,J1,K1) = I1 + J1 + K1 + 1
          RA3(I1,J1+1,K1) = I1 + J1 + K1 + 1
          RA3(I1+1,J1+1,K1) = I1 + J1 + K1 + 2
          RA3(I1,J1+2,K1) = I1 + J1 + K1 + 2
          RA3(I1+1,J1+2,K1) = I1 + J1 + K1 + 3
          RA3(I1,J1+3,K1) = I1 + J1 + K1 + 3
          RA3(I1+1,J1+3,K1) = I1 + J1 + K1 + 4
          RB3(I1,J1,K1) = I1 - J1 + K1
          RB3(I1+1,J1,K1) = I1 - J1 + K1 + 1
          RB3(I1,J1+1,K1) = I1 - J1 + K1 - 1
          RB3(I1+1,J1+1,K1) = I1 - J1 + K1
          RB3(I1,J1+2,K1) = I1 - J1 + K1 - 2
          RB3(I1+1,J1+2,K1) = I1 - J1 + K1 - 1
          RB3(I1,J1+3,K1) = I1 - J1 + K1 - 3
          RB3(I1+1,J1+3,K1) = I1 - J1 + K1 - 2
          RC3(I1,J1,K1) = I1 + J1 - K1
          RC3(I1+1,J1,K1) = I1 + J1 - K1 + 1
          RC3(I1,J1+1,K1) = I1 + J1 - K1 + 1
          RC3(I1+1,J1+1,K1) = I1 + J1 - K1 + 2
          RC3(I1,J1+2,K1) = I1 + J1 - K1 + 2
          RC3(I1+1,J1+2,K1) = I1 + J1 - K1 + 3
          RC3(I1,J1+3,K1) = I1 + J1 - K1 + 3
          RC3(I1+1,J1+3,K1) = I1 + J1 - K1 + 4
         END DO
        END DO
        DO J1=9,10,1
                                                                        
                                                       
         DO I1=1,6,5
          RA3(I1,J1,K1) = I1 + J1 + K1
          RA3(I1+1,J1,K1) = I1 + J1 + K1 + 1
          RA3(I1+2,J1,K1) = I1 + J1 + K1 + 2
          RA3(I1+3,J1,K1) = I1 + J1 + K1 + 3
          RA3(I1+4,J1,K1) = I1 + J1 + K1 + 4
          RB3(I1,J1,K1) = I1 - J1 + K1
          RB3(I1+1,J1,K1) = I1 - J1 + K1 + 1
          RB3(I1+2,J1,K1) = I1 - J1 + K1 + 2
          RB3(I1+3,J1,K1) = I1 - J1 + K1 + 3
          RB3(I1+4,J1,K1) = I1 - J1 + K1 + 4
          RC3(I1,J1,K1) = I1 + J1 - K1
          RC3(I1+1,J1,K1) = I1 + J1 - K1 + 1
          RC3(I1+2,J1,K1) = I1 + J1 - K1 + 2
          RC3(I1+3,J1,K1) = I1 + J1 - K1 + 3
          RC3(I1+4,J1,K1) = I1 + J1 - K1 + 4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
                                                                        
       DO J=1,10
        DO K1=1,6,5
         RA3(J,K1,3) = RB3(J,K1,3) + RC3(J,K1,3)
         RA3(J,K1+1,3) = RB3(J,K1+1,3) + RC3(J,K1+1,3)
         RA3(J,K1+2,3) = RB3(J,K1+2,3) + RC3(J,K1+2,3)
         RA3(J,K1+3,3) = RB3(J,K1+3,3) + RC3(J,K1+3,3)
         RA3(J,K1+4,3) = RB3(J,K1+4,3) + RC3(J,K1+4,3)
        END DO
        K = 11
                                                                        
        IF (J .NE. 10) GO TO 1552
 1551   CONTINUE
        IF (RC1(J) .NE. 0) THEN
         IA1(J) = IB1(J) / INT (RC1(J))
        ELSE
         IA1(J) = IB1(J)
        END IF
       END DO
                                                                        
       GO TO 1553
 1552  IF (J .NE. 10) GO TO 1551
                                                                        
 1553  CONTINUE
                                                                        
                                                                        
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'RA3= ', RA3
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.2 -----'
                                                                        
       DO I=1,10
        DO K1=1,10
         DO J1=1,6,5
          RR1 = RA3(I,J1,K1) * RC3(I,J1,K1)
          RR2 = RA3(I,J1+1,K1) * RC3(I,J1+1,K1)
          RR3 = RA3(I,J1+2,K1) * RC3(I,J1+2,K1)
          RR4 = RA3(I,J1+3,K1) * RC3(I,J1+3,K1)
          RR5 = RA3(I,J1+4,K1) * RC3(I,J1+4,K1)
          RA3(I,J1+4,K1) = RR5
          RA3(I,J1+3,K1) = RR4
          RA3(I,J1+2,K1) = RR3
          RA3(I,J1+1,K1) = RR2
          RA3(I,J1,K1) = RR1
         END DO
        END DO
        J = 11
                                                                        
        IF (I .NE. 10) GO TO 1652
 1651   CONTINUE
        IF (RC1(I) .NE. 0) THEN
         IA1(I) = IB1(I) / INT (RC1(I))
        ELSE
         IA1(I) = IB1(I)
        END IF
       END DO
                                                                        
       GO TO 1653
 1652  CONTINUE
       GO TO 1651
 1653  CONTINUE
                                                                        
                                                                        
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'RA3= ', RA3
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
       DO I=1,10
        DO J1=1,10
         DO K1=1,10
          IF (RA3(I,J1,K1) .EQ. 0) GO TO 1753
          RA3(I,J1,K1) = RA3(I,J1,K1) * RC3(I,J1,K1)
         END DO
        END DO
        J = 11
                                                                        
        IF (I .NE. 10) GO TO 1752
 1751   CONTINUE
        IF (RC1(I) .NE. 0) THEN
         IA1(I) = IB1(I) / INT (RC1(I))
        ELSE
         IA1(I) = IB1(I)
        END IF
       END DO
                                                                        
       GO TO 1753
 1752  CONTINUE
       GO TO 1751
 1753  CONTINUE
                                                                        
                                                                        
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'RA3= ', RA3
                                                                        
                                                                        
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.3 -----'
                                                                        
       DO I=1,10
        DO J=1,10
         DO K=1,10
          GO TO 1862
 1861     RA3(I,J,K) = RA3(I,J,K) * RC3(I,J,K)
         END DO
        END DO
                                                                        
        IF (I .NE. 10) GO TO 1852
 1851   CONTINUE
        IF (RC1(I) .NE. 0) THEN
         IA1(I) = IB1(I) / INT (RC1(I))
        ELSE
         IA1(I) = IB1(I)
        END IF
       END DO
                                                                        
       GO TO 1853
 1852  CONTINUE
       GO TO 1851
                                                                        
 1862  CONTINUE
       RB3(I,J,K) = RB3(I,J,K) * RC3(I,J,K)
       GO TO 1861
 1853  CONTINUE
                                                                        
                                                                        
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'RA3= ', RA3
       WRITE (6, *) 'RB3= ', RB3
                                                                        
                                                                        
                                                                        
       STOP 
      END
