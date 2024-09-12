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
       COMMON /CV6400K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR8, LB3, LA3
       INTEGER II4, II3, II2, II1
       REAL RR7, RR6, RR5, RR4
       LOGICAL LL2, LL1
       REAL RR8 (86)
                                                                        
                                                       
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
        RR6 = FLOAT (I)
        RR4 = FLOAT (I + 1)
        RR7 = FLOAT (I)
        RR5 = FLOAT (I + 1)
        CA1(I) = CMPLX (RR6, RR7)
        CA1(I+1) = CMPLX (RR4, RR5)
        II3 = I + 5
        II1 = I + 6
        RR6 = FLOAT (II3)
        RR4 = FLOAT (II1)
        RR7 = FLOAT (I)
        RR5 = FLOAT (I + 1)
        CB1(I) = CMPLX (RR6, RR7)
        CB1(I+1) = CMPLX (RR4, RR5)
        II3 = I * 2
        II1 = I * 2 + 2
        RR6 = FLOAT (II3)
        RR4 = FLOAT (II1)
        II4 = I * 3
        II2 = I * 3 + 3
        RR7 = FLOAT (II4)
        RR5 = FLOAT (II2)
        CC1(I) = CMPLX (RR6, RR7)
        CC1(I+1) = CMPLX (RR4, RR5)
        LA1(I) = MOD (I, 2) .EQ. 0
        LA1(I+1) = MOD (I + 1, 2) .EQ. 0
        LB1(I) = MOD (I, 3) .EQ. 0
        LB1(I+1) = MOD (I + 1, 3) .EQ. 0
       END DO
                                                                        
C$OMP PARALLEL SHARED (RA2,DA2,DB2,DC2) PRIVATE (J,I)
C$OMP DO 
       DO J=1,10
                                                                        
                                                       
        DO I=1,6,5
         RA2(I,J) = I * J + 5
         RA2(I+1,J) = (I + 1) * J + 5
         RA2(I+2,J) = (I + 2) * J + 5
         RA2(I+3,J) = (I + 3) * J + 5
         RA2(I+4,J) = (I + 4) * J + 5
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

                                                                        
       DO I=1,10
        IF (RA1(I) .GT. 17.) GO TO 130
        IF (I .GT. 5) THEN
         DA1(I) = DB1(I) + DC1(I)
        ELSE
         DA1(I) = DB1(I) - DC1(I)
        END IF
        IA1(I) = IB1(I) * IC1(I)
        RA1(I) = RB1(I) + RC1(I)
       END DO
                                                                        
  130  WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'RA1= ', RA1
                                                                        
                                                                        
       LL2 = LA1(3)
       DO J=1,10
        LL1 = LL2
        DO I=1,10
         IF (RA2(I,J) .GT. 18.) THEN
          GO TO 7
         END IF
         IF (LL1) THEN
          DA2(I,J) = DB2(I,J) + DC2(I,J)
         ELSE
          DA2(I,J) = DB1(I) - DC1(I)
         END IF
         IA1(I) = IB1(I) * IC1(I)
        END DO
    7   CONTINUE
       END DO
                                                                        
                                                                        

       DO J=1,6,5
                                                                        
        CA1(J) = CB1(J) + CC1(J)
        CA1(J+1) = CB1(J+1) + CC1(J+1)
        CA1(J+2) = CB1(J+2) + CC1(J+2)
        CA1(J+3) = CB1(J+3) + CC1(J+3)
        CA1(J+4) = CB1(J+4) + CC1(J+4)
       END DO
                                                                        
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA2= ', DA2
       WRITE (6, *) 'CA1= ', CA1
                                                                        
       S = -9999.
       K = -9999
                                                                        
       DO I=1,10
                                                                        
        IF (RA1(I) .GT. 17.) GO TO 330
        IF (I .GT. 5) THEN
         DA1(I) = DB1(I) + DC1(I)
        ELSE
         CA1(I) = CB1(I) * 2.
         DA1(I) = DB1(I) - DC1(I)
        END IF
        IA1(I) = IB1(I) * IC1(I)
                                                                        
        IF (RA1(I) .GT. RB1(I) * 2.) THEN
         S = RA1(I)
        END IF
                                                                        
        IF (LB1(I)) THEN
         IF (RB1(I) - 7.) 350, 360, 370
  350    CONTINUE
  360    CONTINUE
  370    K = RB1(I) * RR3
        END IF
       END DO
                                                                        
  330  WRITE (6, *) '  S= ', S
       WRITE (6, *) '  K= ', K
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'CA1= ', CA1
                                                                        
                                                                        
       STOP 
      END
