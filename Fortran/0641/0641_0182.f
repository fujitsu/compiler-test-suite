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
       COMMON /CV5288K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR21, LB3, LA3
       INTEGER II2, II1
       REAL RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X   RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       REAL RR21 (86)
                                                                        
                                                       
       DO I=1,6,5
        IA1(I) = 11 - I
        IA1(I+1) = 10 - I
        IA1(I+2) = 9 - I
        IA1(I+3) = 8 - I
        IA1(I+4) = 7 - I
        IB1(I) = I
        IB1(I+1) = I + 1
        IB1(I+2) = I + 2
        IB1(I+3) = I + 3
        IB1(I+4) = I + 4
        IC1(I) = I
        IC1(I+1) = I + 1
        IC1(I+2) = I + 2
        IC1(I+3) = I + 3
        IC1(I+4) = I + 4
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
                                                                        
C$OMP PARALLEL SHARED (RA2,RB2,RC2,DA2,DB2,DC2) PRIVATE (II2,J,I)
C$OMP DO 
       DO J=1,10
        II2 = J * 3
                                                                        
                                                       
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
         RC2(I,J) = I + II2
         RC2(I+1,J) = I + II2 + 1
         RC2(I+2,J) = I + II2 + 2
         RC2(I+3,J) = I + II2 + 3
         RC2(I+4,J) = I + II2 + 4
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
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) '----- TEST NO.1 ----- '
       INDA = 1
       INDB = 1
       INDC = 1
                                                                        
       IA1(1) = IB1(1) + IC1(1)
       IA1(3) = IB1(3) + IC1(3)
       IA1(5) = IB1(5) + IC1(5)
       IA1(7) = IB1(7) + IC1(7)
       IA1(9) = IB1(9) + IC1(9)
                                                                        
       DO I=1,10,2
        IF (IA1(I) .GT. 10) THEN
         INDA = INDA + 1
         DA2(3,INDA) = IA1(I)
        ELSE
         IF (IA1(I) .GT. 5) THEN
          INDB = INDB + 1
          DB2(3,INDB) = -IA1(I)
         ELSE
          IF (IA1(I) .GT. 0) THEN
           INDC = INDC + 1
           DC2(3,INDC) = IA1(I) * IA1(I)
          END IF
         END IF
        END IF
       END DO
                                                                        
                                                                        
       RR1 = RB1(1) + RC1(1)
       RR2 = RB1(3) + RC1(3)
       RR3 = RB1(5) + RC1(5)
       RR4 = RB1(7) + RC1(7)
       RA1(1) = RR1
       RA1(3) = RR2
       RA1(5) = RR3
       RA1(7) = RR4
       RR5 = RB1(9) + RC1(9)
       RA1(9) = RR5
                                                                        
       DO K=2,10,2
        RR6 = RB2(1,K-1) * RC2(1,K)
        RR7 = RB2(3,K-1) * RC2(3,K)
        RR8 = RB2(5,K-1) * RC2(5,K)
        RR9 = RB2(7,K-1) * RC2(7,K)
        RR10 = RB2(9,K-1) * RC2(9,K)
        RA2(1,K) = RR6
        RA2(3,K) = RR7
        RA2(5,K) = RR8
        RA2(7,K) = RR9
        RA2(9,K) = RR10
       END DO
                                                                        
                                                                        
       WRITE (6, *) ' DA2=', DA2
       WRITE (6, *) ' DB2=', DB2
       WRITE (6, *) ' DC2=', DC2
       WRITE (6, *) ' RA1=', RA1
       WRITE (6, *) ' RA2=', RA2
                                                                        
                                                                        
       WRITE (6, *) '----- TEST NO.2 ----- '
                                                                        
       INDA = 1
       INDB = 1
       INDC = 1
                                                                        
       IA1(1) = IB1(1) + IC1(1)
       IA1(3) = IB1(3) + IC1(3)
       IA1(5) = IB1(5) + IC1(5)
       IA1(7) = IB1(7) + IC1(7)
       IA1(9) = IB1(9) + IC1(9)
                                                                        
C$OMP PARALLEL SHARED (IA1,INDC,DC2,INDA,DA2,INDB,DB2) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (9), II1
        DO I=1,10,2
         IF (IA1(I) .LE. 5 .AND. IA1(I) .GT. 0) THEN
          INDC = INDC + 1
          DC2(3,INDC) = IA1(I) * IA1(I)
         END IF
        END DO
C$OMP FLUSH
        GO TO 11
                                                                        
    9   DO I=1,10,2
                                                                        
         IF (IA1(I) .GT. 10) THEN
          INDA = INDA + 1
          DA2(3,INDA) = IA1(I)
         ELSE
          IF (IA1(I) .GT. 5) THEN
           INDB = INDB + 1
           DB2(3,INDB) = -IA1(I)
          END IF
         END IF
        END DO
C$OMP FLUSH
   11   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       RR11 = RB1(1) + RC1(1)
       RR12 = RB1(3) + RC1(3)
       RR13 = RB1(5) + RC1(5)
       RR14 = RB1(7) + RC1(7)
       RA1(1) = RR11
       RA1(3) = RR12
       RA1(5) = RR13
       RA1(7) = RR14
       RR15 = RB1(9) + RC1(9)
       RA1(9) = RR15
                                                                        
       DO K=2,10,2
        RR16 = RB2(1,K-1) * RC2(1,K)
        RR17 = RB2(3,K-1) * RC2(3,K)
        RR18 = RB2(5,K-1) * RC2(5,K)
        RR19 = RB2(7,K-1) * RC2(7,K)
        RR20 = RB2(9,K-1) * RC2(9,K)
        RA2(1,K) = RR16
        RA2(3,K) = RR17
        RA2(5,K) = RR18
        RA2(7,K) = RR19
        RA2(9,K) = RR20
       END DO
                                                                        
       WRITE (6, *) ' DC2=', DC2
       WRITE (6, *) ' RA1=', RA1
       WRITE (6, *) ' RA2=', RA2
       WRITE (6, *) ' DA2=', DA2
       WRITE (6, *) ' DB2=', DB2
       STOP 
      END
 
 
 
 
 
 
 
 
