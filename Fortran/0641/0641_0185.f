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
       COMMON /CV5292K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR9, LB3, LA3
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL DIF1, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5
     X   , DD4, DD3, DD2, DD1
       LOGICAL LL3, LL2, LL1
       REAL RR9 (86)
 

       DO I=1,9,2
        IA1(I) = I
        IA1(I+1) = I + 1
        IB1(I) = I + 2
        IB1(I+1) = I + 3
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
        RR5 = FLOAT (I)
        RR1 = FLOAT (I + 1)
        RR6 = FLOAT (I)
        RR2 = FLOAT (I + 1)
        CA1(I) = CMPLX (RR5, RR6)
        CA1(I+1) = CMPLX (RR1, RR2)
        II7 = I + 5
        II4 = I + 6
        RR5 = FLOAT (II7)
        RR1 = FLOAT (II4)
        RR6 = FLOAT (I)
        RR2 = FLOAT (I + 1)
        CB1(I) = CMPLX (RR5, RR6)
        CB1(I+1) = CMPLX (RR1, RR2)
       END DO
 
C$OMP PARALLEL SHARED (IA2,IB2,IC2,RA2,RB2,RC2,DA2,DB2,DC2,RA3,RB3,RC3,
C$OMP& DA3,CA3,LA3,LB3,LC3) PRIVATE (II2,J,I,II3,LL1,RR3,II5,RR4,II6,II8
C$OMP& ,RR7,II9,RR8,K)
C$OMP DO 
       DO J=1,10
        II2 = J * 3
 

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
C$OMP BARRIER
 
C$OMP DO 
       DO K=1,10
 
        DO J=1,10
         II3 = J * K
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
          II8 = I + J + K
          II5 = I + J + K + 1
          RR7 = FLOAT (II8)
          RR3 = FLOAT (II5)
          II9 = I + II3
          II6 = I + II3 + 1
          RR8 = FLOAT (II9)
          RR4 = FLOAT (II6)
          CA3(I,J,K) = CMPLX (RR7, RR8)
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
 
       DO I=1,6,5
        RA1(I) = RA1(5) + RC1(I)
        RA1(I+1) = RA1(5) + RC1(I+1)
        RA1(I+2) = RA1(5) + RC1(I+2)
        RA1(I+3) = RA1(5) + RC1(I+3)
        RA1(I+4) = RA1(5) + RC1(I+4)
       END DO
 
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
 
       WRITE (6, 9999) '### RA2=', RA2
 
 
       WRITE (6, 9999) '----- TEST NO.2 -----'
 
 
C$OMP PARALLEL SHARED (RA1,RC1,DA1,DC1) PRIVATE (II1,I)
C$OMP DO 
       DO II1=0,1
        GO TO (29), II1
        DO I=1,6,5
         RA1(I) = RA1(5) + RC1(I)
         RA1(I+1) = RA1(5) + RC1(I+1)
         RA1(I+2) = RA1(5) + RC1(I+2)
         RA1(I+3) = RA1(5) + RC1(I+3)
         RA1(I+4) = RA1(5) + RC1(I+4)
        END DO
C$OMP FLUSH
        GO TO 30
 
 
   29   DO I=1,6,5
 
         DA1(I) = DA1(2) + DC1(I)
         DA1(I+1) = DA1(2) + DC1(I+1)
         DA1(I+2) = DA1(2) + DC1(I+2)
         DA1(I+3) = DA1(2) + DC1(I+3)
         DA1(I+4) = DA1(2) + DC1(I+4)
        END DO
C$OMP FLUSH
   30   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
 
 
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
 
       WRITE (6, 9999) '### RA1 =', RA1
       WRITE (6, 9999) '### RA2 =', RA2
       WRITE (6, 9999) '### DA1 =', DA1
 
 
 
       WRITE (6, 9999) '----- TEST NO.3 -----'
 
 
       DO I=2,10
        RA1(I) = RB1(I) + RC1(I)
        IF (RA1(I) .GT. RB1(I) * 2.) THEN
         S = RA1(I)
        END IF
       END DO
 
       DO J=2,7,4
        DO I=2,8,3
         DD1 = DA2(I,J-1) * DB2(I,J)
         DD2 = DA2(I+1,J-1) * DB2(I+1,J)
         DD3 = DA2(I+2,J-1) * DB2(I+2,J)
         DD4 = DD1 * DB2(I,J+1)
         DD5 = DD2 * DB2(I+1,J+1)
         DD6 = DD3 * DB2(I+2,J+1)
         DD7 = DD4 * DB2(I,J+2)
         DD8 = DD5 * DB2(I+1,J+2)
         DD9 = DD6 * DB2(I+2,J+2)
         DD10 = DD7 * DB2(I,J+3)
         DD11 = DD8 * DB2(I+1,J+3)
         DA2(I+2,J+3) = DD9 * DB2(I+2,J+3)
         DA2(I+1,J+3) = DD11
         DA2(I,J+3) = DD10
         DA2(I+2,J+2) = DD9
         DA2(I+1,J+2) = DD8
         DA2(I,J+2) = DD7
         DA2(I+2,J+1) = DD6
         DA2(I+1,J+1) = DD5
         DA2(I,J+1) = DD4
         DA2(I+2,J) = DD3
         DA2(I+1,J) = DD2
         DA2(I,J) = DD1
        END DO
       END DO
       DO I=2,8,3
        DD12 = DA2(I,9) * DB2(I,10)
        DD13 = DA2(I+1,9) * DB2(I+1,10)
        DA2(I+2,10) = DA2(I+2,9) * DB2(I+2,10)
        DA2(I+1,10) = DD13
        DA2(I,10) = DD12
       END DO
 
       DO J=2,7,4
 
 
 
        DO I=2,8,3
         RA2(I,J) = RB2(I,J) + RC2(I,J)
         RA2(I+1,J) = RB2(I+1,J) + RC2(I+1,J)
         RA2(I+2,J) = RB2(I+2,J) + RC2(I+2,J)
         RA2(I,J+1) = RB2(I,J+1) + RC2(I,J+1)
         RA2(I+1,J+1) = RB2(I+1,J+1) + RC2(I+1,J+1)
         RA2(I+2,J+1) = RB2(I+2,J+1) + RC2(I+2,J+1)
         RA2(I,J+2) = RB2(I,J+2) + RC2(I,J+2)
         RA2(I+1,J+2) = RB2(I+1,J+2) + RC2(I+1,J+2)
         RA2(I+2,J+2) = RB2(I+2,J+2) + RC2(I+2,J+2)
         RA2(I,J+3) = RB2(I,J+3) + RC2(I,J+3)
         RA2(I+1,J+3) = RB2(I+1,J+3) + RC2(I+1,J+3)
         RA2(I+2,J+3) = RB2(I+2,J+3) + RC2(I+2,J+3)
        END DO
       END DO
 
 
 
       DO I=2,8,3
        RA2(I,10) = RB2(I,10) + RC2(I,10)
        RA2(I+1,10) = RB2(I+1,10) + RC2(I+1,10)
        RA2(I+2,10) = RB2(I+2,10) + RC2(I+2,10)
       END DO
 
       WRITE (6, 9999) '### S  = ', S
       WRITE (6, 9999) '### DA2= ', DA2
       WRITE (6, 9999) '### RA2= ', RA2
 
       WRITE (6, 9999) '----- TEST NO.4 -----'
 
 
       DIF = -10.
       BSY2 = -10.
 
       LL3 = .FALSE.
       II11 = 0
C$OMP PARALLEL SHARED (DC1,DB1,RC1,IB1,DA3,LB3,LC3,LL3,II11,DIF,IA1) 
C$OMP& PRIVATE (I,J,K,DIF1,LL2,II10)
       LL2 = .FALSE.
C$OMP DO LASTPRIVATE (IA1)
       DO I=1,10
        IF (DC1(I) .GT. 0) THEN
         IF (DB1(I) .GT. SQRT (DC1(I))) THEN
          LL2 = .TRUE.
          II10 = I
          DIF1 = DB1(I) - SQRT (DC1(I))
         ELSE
          LL2 = .TRUE.
          II10 = I
          DIF1 = SQRT (DC1(I)) - DB1(I)
         END IF
        END IF
 
        DO J=1,10
 
         IF (RC1(J) .NE. 0) THEN
          IA1(J) = IB1(J) / INT (RC1(J))
         ELSE
          IA1(J) = IB1(J)
         END IF
        END DO
        DO K=2,6,4
 
         DA3(2,I,K+1) = DA3(2,I,K) + DA3(2,I,K-1)
         DA3(3,I,K+1) = DA3(3,I,K) + DA3(3,I,K-1)
         DA3(4,I,K+1) = DA3(4,I,K) + DA3(4,I,K-1)
         DA3(5,I,K+1) = DA3(5,I,K) + DA3(5,I,K-1)
         DA3(6,I,K+1) = DA3(6,I,K) + DA3(6,I,K-1)
         DA3(7,I,K+1) = DA3(7,I,K) + DA3(7,I,K-1)
         DA3(8,I,K+1) = DA3(8,I,K) + DA3(8,I,K-1)
         DA3(9,I,K+1) = DA3(9,I,K) + DA3(9,I,K-1)
         DA3(2,I,K+2) = DA3(2,I,K+1) + DA3(2,I,K)
         DA3(3,I,K+2) = DA3(3,I,K+1) + DA3(3,I,K)
         DA3(4,I,K+2) = DA3(4,I,K+1) + DA3(4,I,K)
         DA3(5,I,K+2) = DA3(5,I,K+1) + DA3(5,I,K)
         DA3(6,I,K+2) = DA3(6,I,K+1) + DA3(6,I,K)
         DA3(7,I,K+2) = DA3(7,I,K+1) + DA3(7,I,K)
         DA3(8,I,K+2) = DA3(8,I,K+1) + DA3(8,I,K)
         DA3(9,I,K+2) = DA3(9,I,K+1) + DA3(9,I,K)
         DA3(2,I,K+3) = DA3(2,I,K+2) + DA3(2,I,K+1)
         DA3(3,I,K+3) = DA3(3,I,K+2) + DA3(3,I,K+1)
         DA3(4,I,K+3) = DA3(4,I,K+2) + DA3(4,I,K+1)
         DA3(5,I,K+3) = DA3(5,I,K+2) + DA3(5,I,K+1)
         DA3(6,I,K+3) = DA3(6,I,K+2) + DA3(6,I,K+1)
         DA3(7,I,K+3) = DA3(7,I,K+2) + DA3(7,I,K+1)
         DA3(8,I,K+3) = DA3(8,I,K+2) + DA3(8,I,K+1)
         DA3(9,I,K+3) = DA3(9,I,K+2) + DA3(9,I,K+1)
         DA3(2,I,K+4) = DA3(2,I,K+3) + DA3(2,I,K+2)
         DA3(3,I,K+4) = DA3(3,I,K+3) + DA3(3,I,K+2)
         DA3(4,I,K+4) = DA3(4,I,K+3) + DA3(4,I,K+2)
         DA3(5,I,K+4) = DA3(5,I,K+3) + DA3(5,I,K+2)
         DA3(6,I,K+4) = DA3(6,I,K+3) + DA3(6,I,K+2)
         DA3(7,I,K+4) = DA3(7,I,K+3) + DA3(7,I,K+2)
         DA3(8,I,K+4) = DA3(8,I,K+3) + DA3(8,I,K+2)
         DA3(9,I,K+4) = DA3(9,I,K+3) + DA3(9,I,K+2)
        END DO
 

        DO J=1,6,5
         IA1(J) = IA1(2) + IB1(J)
         IA1(J+1) = IA1(2) + IB1(J+1)
         IA1(J+2) = IA1(2) + IB1(J+2)
         IA1(J+3) = IA1(2) + IB1(J+3)
         IA1(J+4) = IA1(2) + IB1(J+4)
        END DO
        LB3(I,2,2) = LB3(I,2,2) .AND. LC3(I,2,2)
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II12)
       IF (LL2) THEN
        IF (LL3) THEN
         IF (II10 .GT. II11) THEN
          DIF = DIF1
          II11 = II10
         END IF
        ELSE
         DIF = DIF1
         II11 = II10
         LL3 = .TRUE.
        END IF
       END IF
C$OMP END CRITICAL (II12)
C$OMP END PARALLEL 
 
       DO I=1,10
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
 
        DO J=1,6,5
         RA3(J,9,3) = RB3(J,9,3) + RC3(J,9,3)
         RA3(J+1,9,3) = RB3(J+1,9,3) + RC3(J+1,9,3)
         RA3(J+2,9,3) = RB3(J+2,9,3) + RC3(J+2,9,3)
         RA3(J+3,9,3) = RB3(J+3,9,3) + RC3(J+3,9,3)
         RA3(J+4,9,3) = RB3(J+4,9,3) + RC3(J+4,9,3)
         RA3(J,10,3) = RB3(J,10,3) + RC3(J,10,3)
         RA3(J+1,10,3) = RB3(J+1,10,3) + RC3(J+1,10,3)
         RA3(J+2,10,3) = RB3(J+2,10,3) + RC3(J+2,10,3)
         RA3(J+3,10,3) = RB3(J+3,10,3) + RC3(J+3,10,3)
         RA3(J+4,10,3) = RB3(J+4,10,3) + RC3(J+4,10,3)
        END DO
        DO K=2,6,4
         CA3(2,I,K+1) = CA3(2,I,K) * RA3(2,I,3)
         CA3(3,I,K+1) = CA3(3,I,K) * RA3(3,I,3)
         CA3(4,I,K+1) = CA3(4,I,K) * RA3(4,I,3)
         CA3(5,I,K+1) = CA3(5,I,K) * RA3(5,I,3)
         CA3(6,I,K+1) = CA3(6,I,K) * RA3(6,I,3)
         CA3(7,I,K+1) = CA3(7,I,K) * RA3(7,I,3)
         CA3(8,I,K+1) = CA3(8,I,K) * RA3(8,I,3)
         CA3(9,I,K+1) = CA3(9,I,K) * RA3(9,I,3)
         CA3(2,I,K+2) = CA3(2,I,K+1) * RA3(2,I,3)
         CA3(3,I,K+2) = CA3(3,I,K+1) * RA3(3,I,3)
         CA3(4,I,K+2) = CA3(4,I,K+1) * RA3(4,I,3)
         CA3(5,I,K+2) = CA3(5,I,K+1) * RA3(5,I,3)
         CA3(6,I,K+2) = CA3(6,I,K+1) * RA3(6,I,3)
         CA3(7,I,K+2) = CA3(7,I,K+1) * RA3(7,I,3)
         CA3(8,I,K+2) = CA3(8,I,K+1) * RA3(8,I,3)
         CA3(9,I,K+2) = CA3(9,I,K+1) * RA3(9,I,3)
         CA3(2,I,K+3) = CA3(2,I,K+2) * RA3(2,I,3)
         CA3(3,I,K+3) = CA3(3,I,K+2) * RA3(3,I,3)
         CA3(4,I,K+3) = CA3(4,I,K+2) * RA3(4,I,3)
         CA3(5,I,K+3) = CA3(5,I,K+2) * RA3(5,I,3)
         CA3(6,I,K+3) = CA3(6,I,K+2) * RA3(6,I,3)
         CA3(7,I,K+3) = CA3(7,I,K+2) * RA3(7,I,3)
         CA3(8,I,K+3) = CA3(8,I,K+2) * RA3(8,I,3)
         CA3(9,I,K+3) = CA3(9,I,K+2) * RA3(9,I,3)
         CA3(2,I,K+4) = CA3(2,I,K+3) * RA3(2,I,3)
         CA3(3,I,K+4) = CA3(3,I,K+3) * RA3(3,I,3)
         CA3(4,I,K+4) = CA3(4,I,K+3) * RA3(4,I,3)
         CA3(5,I,K+4) = CA3(5,I,K+3) * RA3(5,I,3)
         CA3(6,I,K+4) = CA3(6,I,K+3) * RA3(6,I,3)
         CA3(7,I,K+4) = CA3(7,I,K+3) * RA3(7,I,3)
         CA3(8,I,K+4) = CA3(8,I,K+3) * RA3(8,I,3)
         CA3(9,I,K+4) = CA3(9,I,K+3) * RA3(9,I,3)
        END DO
 

        DO J=1,6,5
         CA1(J) = CB1(J) * CA3(I,J,5)
         CA1(J+1) = CB1(J+1) * CA3(I,J+1,5)
         CA1(J+2) = CB1(J+2) * CA3(I,J+2,5)
         CA1(J+3) = CB1(J+3) * CA3(I,J+3,5)
         CA1(J+4) = CB1(J+4) * CA3(I,J+4,5)
        END DO
       END DO
 
       DO J=2,9
 
        DO I=1,10
 
         IF (DC2(I,J) .GT. 0.) THEN
          DA2(I,J) = SIN (DB2(I,J)) * SQRT (DC2(I,J))
          BSY2 = DA2(I,J)
         END IF
        END DO
       END DO
 
C$OMP PARALLEL SHARED (LA3,IC2,IA2,IB2) PRIVATE (K,I,J)
C$OMP DO 
       DO K=1,10
 
        DO I=1,7,4
 

         DO J=1,10
          IF (LA3(J,K,I)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
          END IF
          IF (LA3(J,K,I+1)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
          END IF
          IF (LA3(J,K,I+2)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
          END IF
          IF (LA3(J,K,I+3)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
          END IF
         END DO
        END DO
        DO I=9,10,1
 

         DO J=1,10
          IF (LA3(J,K,I)) THEN
           IF (IC2(J,K) .NE. 0) THEN
            IA2(J,K) = MOD (IB2(J,K), IC2(J,K))
           ELSE
            IA2(J,K) = IB2(J,K) / 5
           END IF
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
 
 
       WRITE (6, 9999) '### DIF=', DIF
       WRITE (6, 9999) '### BSY=', -10.
       WRITE (6, 9999) '### BSY2=', BSY2
       WRITE (6, 9999) '### DB1=', DB1
       WRITE (6, 9999) '### RA3=', RA3
       WRITE (6, 9999) '### IA1=', IA1
       WRITE (6, 9999) '### DA3=', DA3
       WRITE (6, 9999) '### CA3=', CA3
       WRITE (6, 9999) '### DA2=', DA2
       WRITE (6, 9999) '### CA1=', CA1
       WRITE (6, 9999) '### IA2=', IA2
       WRITE (6, 9999) '### LB3=', LB3
 9999  FORMAT(A,(G20.6))
 
       STOP 
      END
 
 
 
 
