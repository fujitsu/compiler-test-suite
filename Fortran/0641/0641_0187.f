      PROGRAM MAIN


       PARAMETER (L1 = 10, L2 = 10, L3 = 10)
       INTEGER*4 IA1(10), IB1(10), IC1(10)
       INTEGER*4 IA2(10,10), IB2(10,10), IC2(10,10)
       REAL*4 RA1(10), RB1(10), RC1(10)
       REAL*4 RA2(10,10), RB2(10,10), RC2(10,10)
       REAL*4 RA3(10,10,10), RB3(10,10,10), RC3(10,10,10)
       REAL*8 DA1(10), DB1(10), DC1(10), DP1(10), DM1(10)
       REAL*8 DIF, DTEMP
       REAL*8 DA2(10,10), DB2(10,10), DC2(10,10)
       REAL*8 DA3(10,10,10), DB3(10,10,10), DC3(10,10,10)
       REAL*8 QA2(10,10), QB2(10,10), QC2(10,10)
       COMPLEX CA1(10), CB1(10), CC1(10)
       COMPLEX CA2(10,10), CB2(10,10), CC2(10,10)
       COMPLEX CA3(10,10,10), CB3(10,10,10), CC3(10,10,10)
       LOGICAL*4 LA3(10,10,10), LB3(10,10,10), LC3(10,10,10)
       INTEGER IDX3, IDX2, IDX1
       PARAMETER (IDX3 = 10, IDX2 = 10, IDX1 = 10)
       COMMON /CV5294K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR19, LB3, LA3
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, 
     X   RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL1
       REAL RR19 (86)
 

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
        DB1(I) = I * 3 - 2
        DB1(I+1) = I * 3 + 1
        DC1(I) = I * 2 + 3
        DC1(I+1) = I * 2 + 5
        RR7 = FLOAT (I)
        RR1 = FLOAT (I + 1)
        RR8 = FLOAT (I)
        RR2 = FLOAT (I + 1)
        CA1(I) = CMPLX (RR7, RR8)
        CA1(I+1) = CMPLX (RR1, RR2)
        II7 = I + 5
        II3 = I + 6
        RR7 = FLOAT (II7)
        RR1 = FLOAT (II3)
        RR8 = FLOAT (I)
        RR2 = FLOAT (I + 1)
        CB1(I) = CMPLX (RR7, RR8)
        CB1(I+1) = CMPLX (RR1, RR2)
        II7 = I * 2
        II3 = I * 2 + 2
        RR7 = FLOAT (II7)
        RR1 = FLOAT (II3)
        II8 = I * 3
        II4 = I * 3 + 3
        RR8 = FLOAT (II8)
        RR2 = FLOAT (II4)
        CC1(I) = CMPLX (RR7, RR8)
        CC1(I+1) = CMPLX (RR1, RR2)
       END DO
 
C$OMP PARALLEL SHARED (IA2,IB2,IC2,RA2,RB2,RC2,DA2,DB2,DC2,RA3,RB3,RC3,
C$OMP& DA3,CA3,LA3,LB3,LC3) PRIVATE (II1,J,I,II2,LL1,RR3,II5,RR4,II6,II9
C$OMP& ,RR9,II10,RR10,K)
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
         DC2(I,J) = I + J - 4
         DC2(I+1,J) = I + J - 3
         DC2(I+2,J) = I + J - 2
         DC2(I+3,J) = I + J - 1
         DC2(I+4,J) = I + J
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
 
C$OMP DO 
       DO K=1,10
 
        DO J=1,10
         II2 = J * K
         LL1 = J .GT. K
 

         DO I=1,9,2
          RA3(I,J,K) = I + J + K
          RA3(I+1,J,K) = I + J + K + 1
          RB3(I,J,K) = I - J + K
          RB3(I+1,J,K) = I - J + K + 1
          RC3(I,J,K) = I + J - K
          RC3(I+1,J,K) = I + J - K + 1
          DA3(I,J,K) = I + J - K
          DA3(I+1,J,K) = I + J - K + 1
          II9 = I + J + K
          II5 = I + J + K + 1
          RR9 = FLOAT (II9)
          RR3 = FLOAT (II5)
          II10 = I + II2
          II6 = I + II2 + 1
          RR10 = FLOAT (II10)
          RR4 = FLOAT (II6)
          CA3(I,J,K) = CMPLX (RR9, RR10)
          CA3(I+1,J,K) = CMPLX (RR3, RR4)
          LA3(I,J,K) = LL1
          LA3(I+1,J,K) = LL1
          LB3(I,J,K) = I - J .GT. I + K
          LB3(I+1,J,K) = I - J .GT. I + K
          LC3(I,J,K) = I * J .GT. I + K
          LC3(I+1,J,K) = (I + 1) * J .GT. I + K + 1
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, 9999) '----- TEST NO.1 -----'
       DO J=1,7,4
 
 
        DO I=1,6,5
         RA2(I,J) = RB2(I,J) + RC2(I,J)
         RA2(I+1,J) = RB2(I+1,J) + RC2(I+1,J)
         RA2(I+2,J) = RB2(I+2,J) + RC2(I+2,J)
         RA2(I+3,J) = RB2(I+3,J) + RC2(I+3,J)
         RA2(I+4,J) = RB2(I+4,J) + RC2(I+4,J)
         RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
         RA2(I+1,J+1) = RB2(I+1,J+1) + RC2(I+1,J+1)
         RA2(I+2,J+1) = RB2(I+2,J+1) + RC2(I+2,J+1)
         RA2(I+3,J+1) = RB2(I+3,J+1) + RC2(I+3,J+1)
         RA2(I+4,J+1) = RB2(I+4,J+1) + RC2(I+4,J+1)
         RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
         RA2(I+1,J+2) = RB2(I+1,J+2) + RC2(I+1,J+2)
         RA2(I+2,J+2) = RB2(I+2,J+2) + RC2(I+2,J+2)
         RA2(I+3,J+2) = RB2(I+3,J+2) + RC2(I+3,J+2)
         RA2(I+4,J+2) = RB2(I+4,J+2) + RC2(I+4,J+2)
         RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
         RA2(I+1,J+3) = RB2(I+1,J+3) + RC2(I+1,J+3)
         RA2(I+2,J+3) = RB2(I+2,J+3) + RC2(I+2,J+3)
         RA2(I+3,J+3) = RB2(I+3,J+3) + RC2(I+3,J+3)
         RA2(I+4,J+3) = RB2(I+4,J+3) + RC2(I+4,J+3)
        END DO
       END DO
       DO J=9,10,1
 
 
        DO I=1,6,5
         RA2(I,J) = RB2(I,J) + RC2(I,J)
         RA2(I+1,J) = RB2(I+1,J) + RC2(I+1,J)
         RA2(I+2,J) = RB2(I+2,J) + RC2(I+2,J)
         RA2(I+3,J) = RB2(I+3,J) + RC2(I+3,J)
         RA2(I+4,J) = RB2(I+4,J) + RC2(I+4,J)
        END DO
       END DO
 
 
       DO I=1,10
 
        IF (LA3(I,2,2)) THEN
         IF (LB3(I,2,2)) THEN
          RA1(I) = RB1(I)
         ELSE
          RA1(I) = RC1(I)
         END IF
         IA1(I) = IB1(I) + IC1(I)
        END IF
       END DO
 
 
       WRITE (6, 9999) '### RA2=', RA2
       WRITE (6, 9999) '### IA1=', IA1
 
 
       WRITE (6, 9999) '----- TEST NO.2 -----'

 
C$OMP PARALLEL SHARED (RB1,RA1,RC1,LA3,LB3,IA2,IB2,IC2,RB2,RC2,RA2,DA2,
C$OMP& IA1) PRIVATE (RR5,DD1,DD2,DD3,RR6,DD4,DD5,DD6,RR11,RR12,RR13,RR14
C$OMP& ,DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD16,DD17,DD18,RR15,
C$OMP& RR16,RR17,RR18,DD19,DD20,DD21,DD22,DD23,DD24,DD25,DD26,DD27,DD28,
C$OMP& DD29,DD30,I,J)
C$OMP DO 
       DO I=1,10
        RB1(I) = 2.5 + SIN (RB1(I)) * RB1(I)
        RA1(I) = RB1(I) + RC1(I)
 
        IF (LA3(I,2,2)) THEN
         IF (LB3(I,2,2)) THEN
 
          DO J=1,6,5
           IA2(I,J) = IB2(I,J) * IC2(I,J)
           IA2(I,J+1) = IB2(I,J+1) * IC2(I,J+1)
           IA2(I,J+2) = IB2(I,J+2) * IC2(I,J+2)
           IA2(I,J+3) = IB2(I,J+3) * IC2(I,J+3)
           IA2(I,J+4) = IB2(I,J+4) * IC2(I,J+4)
 
           RR11 = SIN (RB2(I,J))
           RR12 = SIN (RB2(I,J+1))
           RR13 = SIN (RB2(I,J+2))
           RR14 = SIN (RB2(I,J+3))
           RR5 = SIN (RB2(I,J+4))
           RC2(I,J) = RR11 * RB2(I,J)
           RC2(I,J+1) = RR12 * RB2(I,J+1)
           RC2(I,J+2) = RR13 * RB2(I,J+2)
           RC2(I,J+3) = RR14 * RB2(I,J+3)
           RC2(I,J+4) = RR5 * RB2(I,J+4)
           RA2(I,J) = RB2(I,J) + RC2(I,J)
           RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
           RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
           RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
           RA2(I,J+4) = RB2(I,J+4) + RC2(I,J+4)
           DD7 = COS (DA2(I,J))
           DD8 = COS (DA2(I,J+1))
           DD9 = COS (DA2(I,J+2))
           DD10 = COS (DA2(I,J+3))
           DD1 = COS (DA2(I,J+4))
           DD11 = SIN (DA2(I,J))
           DD12 = SIN (DA2(I,J+1))
           DD13 = SIN (DA2(I,J+2))
           DD14 = SIN (DA2(I,J+3))
           DD3 = SIN (DA2(I,J+4))
           DD15 = DD11 * DA2(I,J)
           DD16 = DD12 * DA2(I,J+1)
           DD17 = DD13 * DA2(I,J+2)
           DD18 = DD14 * DA2(I,J+3)
           DD2 = DD3 * DA2(I,J+4)
           DA2(I,J) = DD7 + DD15
           DA2(I,J+1) = DD8 + DD16
           DA2(I,J+2) = DD9 + DD17
           DA2(I,J+3) = DD10 + DD18
           DA2(I,J+4) = DD1 + DD2
          END DO
         ELSE
          DO J=1,6,5
           IA2(I,J) = IB2(I,J)
           IA2(I,J+1) = IB2(I,J+1)
           IA2(I,J+2) = IB2(I,J+2)
           IA2(I,J+3) = IB2(I,J+3)
           IA2(I,J+4) = IB2(I,J+4)
 
           RR15 = SIN (RB2(I,J))
           RR16 = SIN (RB2(I,J+1))
           RR17 = SIN (RB2(I,J+2))
           RR18 = SIN (RB2(I,J+3))
           RR6 = SIN (RB2(I,J+4))
           RC2(I,J) = RR15 * RB2(I,J)
           RC2(I,J+1) = RR16 * RB2(I,J+1)
           RC2(I,J+2) = RR17 * RB2(I,J+2)
           RC2(I,J+3) = RR18 * RB2(I,J+3)
           RC2(I,J+4) = RR6 * RB2(I,J+4)
           RA2(I,J) = RB2(I,J) + RC2(I,J)
           RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
           RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
           RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
           RA2(I,J+4) = RB2(I,J+4) + RC2(I,J+4)
           DD19 = COS (DA2(I,J))
           DD20 = COS (DA2(I,J+1))
           DD21 = COS (DA2(I,J+2))
           DD22 = COS (DA2(I,J+3))
           DD4 = COS (DA2(I,J+4))
           DD23 = SIN (DA2(I,J))
           DD24 = SIN (DA2(I,J+1))
           DD25 = SIN (DA2(I,J+2))
           DD26 = SIN (DA2(I,J+3))
           DD6 = SIN (DA2(I,J+4))
           DD27 = DD23 * DA2(I,J)
           DD28 = DD24 * DA2(I,J+1)
           DD29 = DD25 * DA2(I,J+2)
           DD30 = DD26 * DA2(I,J+3)
           DD5 = DD6 * DA2(I,J+4)
           DA2(I,J) = DD19 + DD27
           DA2(I,J+1) = DD20 + DD28
           DA2(I,J+2) = DD21 + DD29
           DA2(I,J+3) = DD22 + DD30
           DA2(I,J+4) = DD4 + DD5
          END DO
         END IF
        END IF
 
        IA1(I) = RA1(I)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
 
       WRITE (6, 9999) '### IA1= ', IA1
       WRITE (6, 9999) '### RA2= ', RA2
       WRITE (6, 9999) '### DA2= ', DA2
 
       WRITE (6, 9999) '----- TEST NO.3 -----'
 

       BSY = -10.
       BSY2 = -10.
 
       DO I=1,10
        IF (DC1(I) .GT. 0) THEN
         DTEMP = SQRT (DC1(I))
         CALL DFDIF (DIF,DB1(I),DTEMP)
        END IF
        DO K=1,7,4
 
         DO J=1,6,5
          RA3(J,K,3) = RB3(J,K,3) + RC3(J,K,3)
          RA3(J+1,K,3) = RB3(J+1,K,3) + RC3(J+1,K,3)
          RA3(J+2,K,3) = RB3(J+2,K,3) + RC3(J+2,K,3)
          RA3(J+3,K,3) = RB3(J+3,K,3) + RC3(J+3,K,3)
          RA3(J+4,K,3) = RB3(J+4,K,3) + RC3(J+4,K,3)
          RA3(J,K+1,3) = RB3(J,K+1,3) + RC3(J,K+1,3)
          RA3(J+1,K+1,3) = RB3(J+1,K+1,3) + RC3(J+1,K+1,3)
          RA3(J+2,K+1,3) = RB3(J+2,K+1,3) + RC3(J+2,K+1,3)
          RA3(J+3,K+1,3) = RB3(J+3,K+1,3) + RC3(J+3,K+1,3)
          RA3(J+4,K+1,3) = RB3(J+4,K+1,3) + RC3(J+4,K+1,3)
          RA3(J,K+2,3) = RB3(J,K+2,3) + RC3(J,K+2,3)
          RA3(J+1,K+2,3) = RB3(J+1,K+2,3) + RC3(J+1,K+2,3)
          RA3(J+2,K+2,3) = RB3(J+2,K+2,3) + RC3(J+2,K+2,3)
          RA3(J+3,K+2,3) = RB3(J+3,K+2,3) + RC3(J+3,K+2,3)
          RA3(J+4,K+2,3) = RB3(J+4,K+2,3) + RC3(J+4,K+2,3)
          RA3(J,K+3,3) = RB3(J,K+3,3) + RC3(J,K+3,3)
          RA3(J+1,K+3,3) = RB3(J+1,K+3,3) + RC3(J+1,K+3,3)
          RA3(J+2,K+3,3) = RB3(J+2,K+3,3) + RC3(J+2,K+3,3)
          RA3(J+3,K+3,3) = RB3(J+3,K+3,3) + RC3(J+3,K+3,3)
          RA3(J+4,K+3,3) = RB3(J+4,K+3,3) + RC3(J+4,K+3,3)
         END DO
        END DO
        DO K=9,10,1
 
         DO J=1,6,5
          RA3(J,K,3) = RB3(J,K,3) + RC3(J,K,3)
          RA3(J+1,K,3) = RB3(J+1,K,3) + RC3(J+1,K,3)
          RA3(J+2,K,3) = RB3(J+2,K,3) + RC3(J+2,K,3)
          RA3(J+3,K,3) = RB3(J+3,K,3) + RC3(J+3,K,3)
          RA3(J+4,K,3) = RB3(J+4,K,3) + RC3(J+4,K,3)
         END DO
        END DO
 
        DO J=1,10
 
         IF (LA3(J,3,3)) THEN
          IF (RC1(J) .NE. 0) THEN
           IA1(J) = IB1(J) / INT (RC1(J))
          ELSE
           IA1(J) = IB1(J)
          END IF
          CA1(J) = CB1(J) * CC1(J)
         END IF
        END DO
 
        IF (MOD (INT (RA3(I,3,3)), I) .NE. 0) THEN
         BSY = RA3(I,3,3)
        END IF
        DO K=2,8,2
 
         DA3(2,I,K+1) = DA3(2,I,K) + DA3(2,I,K-1)
         DA3(3,I,K+1) = DA3(3,I,K) + DA3(3,I,K-1)
         DA3(4,I,K+1) = DA3(4,I,K) + DA3(4,I,K-1)
         DA3(5,I,K+1) = DA3(5,I,K) + DA3(5,I,K-1)
         DA3(6,I,K+1) = DA3(6,I,K) + DA3(6,I,K-1)
         DA3(7,I,K+1) = DA3(7,I,K) + DA3(7,I,K-1)
         DA3(8,I,K+1) = DA3(8,I,K) + DA3(8,I,K-1)
         DA3(9,I,K+1) = DA3(9,I,K) + DA3(9,I,K-1)
         CA3(2,I,K+1) = CA3(2,I,K) * RA3(2,I,3)
         CA3(3,I,K+1) = CA3(3,I,K) * RA3(3,I,3)
         CA3(4,I,K+1) = CA3(4,I,K) * RA3(4,I,3)
         CA3(5,I,K+1) = CA3(5,I,K) * RA3(5,I,3)
         CA3(6,I,K+1) = CA3(6,I,K) * RA3(6,I,3)
         CA3(7,I,K+1) = CA3(7,I,K) * RA3(7,I,3)
         CA3(8,I,K+1) = CA3(8,I,K) * RA3(8,I,3)
         CA3(9,I,K+1) = CA3(9,I,K) * RA3(9,I,3)
         DA3(2,I,K+2) = DA3(2,I,K+1) + DA3(2,I,K)
         DA3(3,I,K+2) = DA3(3,I,K+1) + DA3(3,I,K)
         DA3(4,I,K+2) = DA3(4,I,K+1) + DA3(4,I,K)
         DA3(5,I,K+2) = DA3(5,I,K+1) + DA3(5,I,K)
         DA3(6,I,K+2) = DA3(6,I,K+1) + DA3(6,I,K)
         DA3(7,I,K+2) = DA3(7,I,K+1) + DA3(7,I,K)
         DA3(8,I,K+2) = DA3(8,I,K+1) + DA3(8,I,K)
         DA3(9,I,K+2) = DA3(9,I,K+1) + DA3(9,I,K)
         CA3(2,I,K+2) = CA3(2,I,K+1) * RA3(2,I,3)
         CA3(3,I,K+2) = CA3(3,I,K+1) * RA3(3,I,3)
         CA3(4,I,K+2) = CA3(4,I,K+1) * RA3(4,I,3)
         CA3(5,I,K+2) = CA3(5,I,K+1) * RA3(5,I,3)
         CA3(6,I,K+2) = CA3(6,I,K+1) * RA3(6,I,3)
         CA3(7,I,K+2) = CA3(7,I,K+1) * RA3(7,I,3)
         CA3(8,I,K+2) = CA3(8,I,K+1) * RA3(8,I,3)
         CA3(9,I,K+2) = CA3(9,I,K+1) * RA3(9,I,3)
        END DO
        DO J=2,9
 
         IF (DC2(I,J) .GT. 0.) THEN
          DA2(I,J) = SIN (DB2(I,J)) * SQRT (DC2(I,J))
          BSY2 = DA2(I,J)
         END IF
        END DO
 

        DO J=1,6,5
         CA1(J) = CB1(J) * CA3(I,J,5)
         CA1(J+1) = CB1(J+1) * CA3(I,J+1,5)
         CA1(J+2) = CB1(J+2) * CA3(I,J+2,5)
         CA1(J+3) = CB1(J+3) * CA3(I,J+3,5)
         CA1(J+4) = CB1(J+4) * CA3(I,J+4,5)
        END DO
 
        DO K=1,7,4
 

         DO J=1,10
          IF (LA3(J,K,I)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
           RA2(J,K) = RB2(J,K)
          END IF
          IF (LA3(J,K+1,I)) THEN
           IF (IC2(J,K+1) .NE. 0) THEN
            IA2(J,K+1) = MOD (IB2(J,K+1), IC2(J,K+1))
           ELSE
            IA2(J,K+1) = IB2(J,K+1) / 5
           END IF
           RA2(J,K+1) = RB2(J,K+1)
          END IF
          IF (LA3(J,K+2,I)) THEN
           IF (IC2(J,K+2) .NE. 0) THEN
            IA2(J,K+2) = MOD (IB2(J,K+2), IC2(J,K+2))
           ELSE
            IA2(J,K+2) = IB2(J,K+2) / 5
           END IF
           RA2(J,K+2) = RB2(J,K+2)
          END IF
          IF (LA3(J,K+3,I)) THEN
           IF (IC2(J,K+3) .NE. 0) THEN
            IA2(J,K+3) = MOD (IB2(J,K+3), IC2(J,K+3))
           ELSE
            IA2(J,K+3) = IB2(J,K+3) / 5
           END IF
           RA2(J,K+3) = RB2(J,K+3)
          END IF
         END DO
        END DO
        DO K=9,10,1
 

         DO J=1,10
          IF (LA3(J,K,I)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
           RA2(J,K) = RB2(J,K)
          END IF
         END DO
        END DO
 
        CALL LFAND (LB3(I,2,2),LB3(I,2,2),LC3(I,2,2))
       END DO
 
 
       WRITE (6, 9999) '### DIF=', DIF
       WRITE (6, 9999) '### BSY=', BSY
       WRITE (6, 9999) '### BSY2=', BSY2
       WRITE (6, 9999) '### DB1=', DB1
       WRITE (6, 9999) '### RA3=', RA3
       WRITE (6, 9999) '### IA1=', IA1
       WRITE (6, 9999) '### CA1=', CA1
       WRITE (6, 9999) '### DA3=', DA3
       WRITE (6, 9999) '### CA3=', CA3
       WRITE (6, 9999) '### DA2=', DA2
       WRITE (6, 9999) '### CA1=', CA1
       WRITE (6, 9999) '### IA2=', IA2
       WRITE (6, 9999) '### RA2=', RA2
       WRITE (6, 9999) '### LB3=', LB3
 9999  FORMAT(A,(G20.6))
 
       STOP 
      END
    
      SUBROUTINE FRSIN ( X, Y )
       Y = 2.5 + SIN (X) * X
       RETURN 
      END
    
      SUBROUTINE DRSIN ( X, Y )
       REAL*8 X, Y
       Y = 2.5 + SIN (X) * X
       RETURN 
      END
    
      SUBROUTINE FRCOS ( X, Y )
       Y = 2.5 + COS (X) * X
       RETURN 
      END
    
      SUBROUTINE DFDIF ( DA, DB, DC )
       REAL*8 DA, DB, DC
       IF (DB .GT. DC) THEN
        DA = DB - DC
       ELSE
        DA = DC - DB
       END IF
       RETURN 
      END
    
      SUBROUTINE IFDIV ( IOP1, IOP2, IOP3 )
       INTEGER IOP1, IOP2, IOP3
 
       IOP1 = IOP2 / IOP3
 
       RETURN 
      END
    
      SUBROUTINE LFAND ( LOP1, LOP2, LOP3 )
       LOGICAL LOP1, LOP2, LOP3
 
       LOP1 = LOP2 .AND. LOP3
 
       RETURN 
      END
 
 
 
