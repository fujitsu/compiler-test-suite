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
       COMMON /CV6404K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR6, LB3, LA3
       INTEGER II20, II19, II18, II17, II16, II15, II14, II13, II12, 
     X   II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       REAL RR6 (86)
                                                                        
                                                       
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
        LA1(I) = I .GE. 2
        LA1(I+1) = I .GE. 1
        LB1(I) = MOD (I, 3) .NE. 0
        LB1(I+1) = MOD (I + 1, 3) .NE. 0
       END DO
                                                                        
C$OMP PARALLEL SHARED (DA2,DB2,DC2,QA2,QB2) PRIVATE (J,I)
C$OMP DO 
       DO J=1,10
                                                                        
                                                       
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
C$OMP END PARALLEL 

       TEMP = RA1(10)
       KLM = 0
       KLN = 0

       DO I=1,10
                                                                        
        IF (LA1(I)) THEN
         IF (LB1(I)) THEN
          IF (TEMP .GT. 5.) THEN
           IF (I - 5) 21, 22, 23
   21      RA1(I) = -(RB1(I) + RC1(I))
           GO TO 24
   22      RA1(I) = RC1(I) - RB1(I)
           GO TO 24
   23      RA1(I) = RB1(I) + RC1(I)
                                                                        
   24      QA2(I,1) = MOD (IB1(I), I)
           DO J=1,6,5
            DA1(J) = DB1(J) + DC1(J)
            DA1(J+1) = DB1(J+1) + DC1(J+1)
            DA1(J+2) = DB1(J+2) + DC1(J+2)
            DA1(J+3) = DB1(J+3) + DC1(J+3)
            DA1(J+4) = DB1(J+4) + DC1(J+4)
           END DO
           DO K=1,7,4
            DO J=1,6,5
             DA2(J,K) = DB2(J,K) + DC2(J,K)
             DA2(J+1,K) = DB2(J+1,K) + DC2(J+1,K)
             DA2(J+2,K) = DB2(J+2,K) + DC2(J+2,K)
             DA2(J+3,K) = DB2(J+3,K) + DC2(J+3,K)
             DA2(J+4,K) = DB2(J+4,K) + DC2(J+4,K)
             DA2(J,K+1) = DB2(J,K+1) + DC2(J,K+1)
             DA2(J+1,K+1) = DB2(J+1,K+1) + DC2(J+1,K+1)
             DA2(J+2,K+1) = DB2(J+2,K+1) + DC2(J+2,K+1)
             DA2(J+3,K+1) = DB2(J+3,K+1) + DC2(J+3,K+1)
             DA2(J+4,K+1) = DB2(J+4,K+1) + DC2(J+4,K+1)
             DA2(J,K+2) = DB2(J,K+2) + DC2(J,K+2)
             DA2(J+1,K+2) = DB2(J+1,K+2) + DC2(J+1,K+2)
             DA2(J+2,K+2) = DB2(J+2,K+2) + DC2(J+2,K+2)
             DA2(J+3,K+2) = DB2(J+3,K+2) + DC2(J+3,K+2)
             DA2(J+4,K+2) = DB2(J+4,K+2) + DC2(J+4,K+2)
             DA2(J,K+3) = DB2(J,K+3) + DC2(J,K+3)
             DA2(J+1,K+3) = DB2(J+1,K+3) + DC2(J+1,K+3)
             DA2(J+2,K+3) = DB2(J+2,K+3) + DC2(J+2,K+3)
             DA2(J+3,K+3) = DB2(J+3,K+3) + DC2(J+3,K+3)
             DA2(J+4,K+3) = DB2(J+4,K+3) + DC2(J+4,K+3)
            END DO
           END DO
           DO K=9,10,1
            DO J=1,6,5
             DA2(J,K) = DB2(J,K) + DC2(J,K)
             DA2(J+1,K) = DB2(J+1,K) + DC2(J+1,K)
             DA2(J+2,K) = DB2(J+2,K) + DC2(J+2,K)
             DA2(J+3,K) = DB2(J+3,K) + DC2(J+3,K)
             DA2(J+4,K) = DB2(J+4,K) + DC2(J+4,K)
            END DO
           END DO
           DO J=1,6,5
            DC1(J) = J
            DC1(J+1) = J + 1
            DC1(J+2) = J + 2
            DC1(J+3) = J + 3
            DC1(J+4) = J + 4
            II5 = MOD (IB1(J), J)
            II6 = MOD (IB1(J+1), J + 1)
            II7 = MOD (IB1(J+2), J + 2)
            II8 = MOD (IB1(J+3), J + 3)
            II1 = MOD (IB1(J+4), J + 4)
            II9 = MOD (IC1(J), J)
            II10 = MOD (IC1(J+1), J + 1)
            II11 = MOD (IC1(J+2), J + 2)
            II12 = MOD (IC1(J+3), J + 3)
            II2 = MOD (IC1(J+4), J + 4)
            IA1(J) = II5 * II9
            IA1(J+1) = II6 * II10
            IA1(J+2) = II7 * II11
            IA1(J+3) = II8 * II12
            IA1(J+4) = II1 * II2
           END DO
                                                                        
          ELSE
           DO J=1,6,5
            DD7 = DC1(J) * J
            DD8 = DC1(J+1) * (J + 1)
            DD9 = DC1(J+2) * (J + 2)
            DD10 = DC1(J+3) * (J + 3)
            DD1 = DC1(J+4) * (J + 4)
            DA1(J) = DB1(J) - DD7
            DA1(J+1) = DB1(J+1) - DD8
            DA1(J+2) = DB1(J+2) - DD9
            DA1(J+3) = DB1(J+3) - DD10
            DA1(J+4) = DB1(J+4) - DD1
           END DO
           DO K=1,7,4
            DO J=1,6,5
             DD11 = DC2(J,K) * 2.
             DD12 = DC2(J+1,K) * 2.
             DD13 = DC2(J+2,K) * 2.
             DD14 = DC2(J+3,K) * 2.
             DD2 = DC2(J+4,K) * 2.
             DA2(J,K) = DB2(J,K) + DD11
             DA2(J+1,K) = DB2(J+1,K) + DD12
             DA2(J+2,K) = DB2(J+2,K) + DD13
             DA2(J+3,K) = DB2(J+3,K) + DD14
             DA2(J+4,K) = DB2(J+4,K) + DD2
             DD11 = DC2(J,K+1) * 2.
             DD12 = DC2(J+1,K+1) * 2.
             DD13 = DC2(J+2,K+1) * 2.
             DD14 = DC2(J+3,K+1) * 2.
             DD2 = DC2(J+4,K+1) * 2.
             DA2(J,K+1) = DB2(J,K+1) + DD11
             DA2(J+1,K+1) = DB2(J+1,K+1) + DD12
             DA2(J+2,K+1) = DB2(J+2,K+1) + DD13
             DA2(J+3,K+1) = DB2(J+3,K+1) + DD14
             DA2(J+4,K+1) = DB2(J+4,K+1) + DD2
             DD11 = DC2(J,K+2) * 2.
             DD12 = DC2(J+1,K+2) * 2.
             DD13 = DC2(J+2,K+2) * 2.
             DD14 = DC2(J+3,K+2) * 2.
             DD2 = DC2(J+4,K+2) * 2.
             DA2(J,K+2) = DB2(J,K+2) + DD11
             DA2(J+1,K+2) = DB2(J+1,K+2) + DD12
             DA2(J+2,K+2) = DB2(J+2,K+2) + DD13
             DA2(J+3,K+2) = DB2(J+3,K+2) + DD14
             DA2(J+4,K+2) = DB2(J+4,K+2) + DD2
             DD11 = DC2(J,K+3) * 2.
             DD12 = DC2(J+1,K+3) * 2.
             DD13 = DC2(J+2,K+3) * 2.
             DD14 = DC2(J+3,K+3) * 2.
             DD2 = DC2(J+4,K+3) * 2.
             DA2(J,K+3) = DB2(J,K+3) + DD11
             DA2(J+1,K+3) = DB2(J+1,K+3) + DD12
             DA2(J+2,K+3) = DB2(J+2,K+3) + DD13
             DA2(J+3,K+3) = DB2(J+3,K+3) + DD14
             DA2(J+4,K+3) = DB2(J+4,K+3) + DD2
            END DO
           END DO
           DO K=9,10,1
            DO J=1,6,5
             DD15 = DC2(J,K) * 2.
             DD16 = DC2(J+1,K) * 2.
             DD17 = DC2(J+2,K) * 2.
             DD18 = DC2(J+3,K) * 2.
             DD3 = DC2(J+4,K) * 2.
             DA2(J,K) = DB2(J,K) + DD15
             DA2(J+1,K) = DB2(J+1,K) + DD16
             DA2(J+2,K) = DB2(J+2,K) + DD17
             DA2(J+3,K) = DB2(J+3,K) + DD18
             DA2(J+4,K) = DB2(J+4,K) + DD3
            END DO
           END DO
           DO J=1,6,5
            RR2 = FLOAT (J)
            RR3 = FLOAT (J + 1)
            RR4 = FLOAT (J + 2)
            RR5 = FLOAT (J + 3)
            RR1 = FLOAT (J + 4)
            DC1(J) = SIN (RR2)
            DC1(J+1) = SIN (RR3)
            DC1(J+2) = SIN (RR4)
            DC1(J+3) = SIN (RR5)
            DC1(J+4) = SIN (RR1)
            IA1(J) = MOD (IB1(J), J)
            IA1(J+1) = MOD (IB1(J+1), J + 1)
            IA1(J+2) = MOD (IB1(J+2), J + 2)
            IA1(J+3) = MOD (IB1(J+3), J + 3)
            IA1(J+4) = MOD (IB1(J+4), J + 4)
           END DO
           IF (IA1(I) .NE. 0) THEN
            RA1(I) = RB1(I) / IA1(I)
           ELSE
            RA1(I) = RB1(I) + TAN (COS (FLOAT (IA1(I))))
           END IF
          END IF
         ELSE
          DO J=1,6,5
           II13 = J + 20
           II14 = J + 21
           II15 = J + 22
           II16 = J + 23
           II4 = J + 24
           II17 = MOD (IC1(J), II13)
           II18 = MOD (IC1(J+1), II14)
           II19 = MOD (IC1(J+2), II15)
           II20 = MOD (IC1(J+3), II16)
           II3 = MOD (IC1(J+4), II4)
           IA1(J) = MOD (IB1(J), II17)
           IA1(J+1) = MOD (IB1(J+1), II18)
           IA1(J+2) = MOD (IB1(J+2), II19)
           IA1(J+3) = MOD (IB1(J+3), II20)
           IA1(J+4) = MOD (IB1(J+4), II3)
          END DO
C$OMP PARALLEL SHARED (DB2,DC2,DA2) PRIVATE (DD4,DD5,DD6,DD19,DD20,DD21,
C$OMP& DD22,DD23,DD24,DD25,DD26,DD27,DD28,DD29,DD30,K,J)
C$OMP DO 
          DO K=1,10
           DO J=1,6,5
            DD19 = COS (DB2(J,K))
            DD20 = COS (DB2(J+1,K))
            DD21 = COS (DB2(J+2,K))
            DD22 = COS (DB2(J+3,K))
            DD5 = COS (DB2(J+4,K))
            DD23 = SIN (DC2(J,K))
            DD24 = SIN (DC2(J+1,K))
            DD25 = SIN (DC2(J+2,K))
            DD26 = SIN (DC2(J+3,K))
            DD6 = SIN (DC2(J+4,K))
            DD27 = DD19 * DD23
            DD28 = DD20 * DD24
            DD29 = DD21 * DD25
            DD30 = DD22 * DD26
            DD4 = DD5 * DD6
            DA2(J,K) = SIN (DD27)
            DA2(J+1,K) = SIN (DD28)
            DA2(J+2,K) = SIN (DD29)
            DA2(J+3,K) = SIN (DD30)
            DA2(J+4,K) = SIN (DD4)
           END DO
          END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
          DO J=1,6,5
           IB1(J) = IA1(J) - 3
           IB1(J+1) = IA1(J+1) - 3
           IB1(J+2) = IA1(J+2) - 3
           IB1(J+3) = IA1(J+3) - 3
           IB1(J+4) = IA1(J+4) - 3
          END DO
          IF (DA2(I,1) .GT. 0.5D0) THEN
           KLM = KLM + 1
           DP1(KLM) = IA1(I)
          END IF
         END IF
         QA2(2,I) = QB2(I,3)
        END IF
                                                                        
        IF (DA2(I,1) .GT. 0.5D0) THEN
         KLN = KLN + 1
         DM1(KLN) = IA1(I)
        END IF
       END DO
                                                                        

       WRITE (6, *) 'RA1= ', RA1
       WRITE (6, *) 'QA2= ', QA2
       WRITE (6, *) 'DA1= ', DA1
       WRITE (6, *) 'DA2= ', DA2
       WRITE (6, *) 'DC1= ', DC1
       WRITE (6, *) 'IA1= ', IA1
       WRITE (6, *) 'IB1= ', IB1
       WRITE (6, *) 'IC1= ', IC1
       WRITE (6, *) 'DP1= ', DP1
       WRITE (6, *) 'DM1= ', DM1
                                                                        
       STOP 
      END
 
 
 
