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
       INTEGER IDX2, IDX1
       PARAMETER (IDX2 = 10, IDX1 = 10)
       COMMON /CV5289K/ CC3, CB3, CA3, CC2, CB2, CA2, QC2, QB2, QA2, DC3
     X   , DB3, DA3, DC2, DB2, DA2, RC3, RB3, RA3, RC2, RB2, RA2, IC2, 
     X   IB2, IA2, LC3, RR21, LB3, LA3
       INTEGER II20, II19, II18, II17, II16, II15, II14, II13, II12, 
     X   II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       REAL RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X   RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL5, LL4, LL3, LL2, LL1
       REAL RR21 (86)

       DO I=1,9,2
        IA1(I) = I
        IA1(I+1) = I + 1
        IB1(I) = I + 2
        IB1(I+1) = I + 3
        RC1(I) = I + 4
        RC1(I+1) = I + 5
        DA1(I) = I * 2
        DA1(I+1) = I * 2 + 2
        DB1(I) = I * 3 - 2
        DB1(I+1) = I * 3 + 1
        DC1(I) = I * 2 + 3
        DC1(I+1) = I * 2 + 5
        RR7 = FLOAT (I)
        RR2 = FLOAT (I + 1)
        RR8 = FLOAT (I)
        RR3 = FLOAT (I + 1)
        CA1(I) = CMPLX (RR7, RR8)
        CA1(I+1) = CMPLX (RR2, RR3)
        II8 = I + 5
        II4 = I + 6
        RR7 = FLOAT (II8)
        RR2 = FLOAT (II4)
        RR8 = FLOAT (I)
        RR3 = FLOAT (I + 1)
        CB1(I) = CMPLX (RR7, RR8)
        CB1(I+1) = CMPLX (RR2, RR3)
       END DO
 
C$OMP PARALLEL SHARED (DA2,DB2,DC2,CA2,RA3,RB3,RC3,DA3,CA3,LB3,LC3) 
C$OMP& PRIVATE (RR1,RR4,II5,II9,II10,II11,II12,RR9,RR10,RR11,RR12,J,I,
C$OMP& II1,RR5,II6,RR6,II7,II13,II14,II15,II16,RR13,RR14,RR15,RR16,II17,
C$OMP& II18,II19,II20,RR17,RR18,RR19,RR20,K)
C$OMP DO 
       DO J=1,10
        RR1 = FLOAT (J * 3)
 

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
         II9 = I + 2
         II10 = I + 3
         II11 = I + 4
         II12 = I + 5
         II5 = I + 6
         RR9 = FLOAT (II9)
         RR10 = FLOAT (II10)
         RR11 = FLOAT (II11)
         RR12 = FLOAT (II12)
         RR4 = FLOAT (II5)
         CA2(I,J) = CMPLX (RR9, RR1)
         CA2(I+1,J) = CMPLX (RR10, RR1)
         CA2(I+2,J) = CMPLX (RR11, RR1)
         CA2(I+3,J) = CMPLX (RR12, RR1)
         CA2(I+4,J) = CMPLX (RR4, RR1)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
 
C$OMP DO 
       DO K=1,10
 
        DO J=1,10
         II1 = J * K
 

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
          DA3(I,J,K) = I + J - K
          DA3(I+1,J,K) = I + J - K + 1
          DA3(I+2,J,K) = I + J - K + 2
          DA3(I+3,J,K) = I + J - K + 3
          DA3(I+4,J,K) = I + J - K + 4
          II13 = I + J + K
          II14 = I + J + K + 1
          II15 = I + J + K + 2
          II16 = I + J + K + 3
          II6 = I + J + K + 4
          RR13 = FLOAT (II13)
          RR14 = FLOAT (II14)
          RR15 = FLOAT (II15)
          RR16 = FLOAT (II16)
          RR5 = FLOAT (II6)
          II17 = I + II1
          II18 = I + II1 + 1
          II19 = I + II1 + 2
          II20 = I + II1 + 3
          II7 = I + II1 + 4
          RR17 = FLOAT (II17)
          RR18 = FLOAT (II18)
          RR19 = FLOAT (II19)
          RR20 = FLOAT (II20)
          RR6 = FLOAT (II7)
          CA3(I,J,K) = CMPLX (RR13, RR17)
          CA3(I+1,J,K) = CMPLX (RR14, RR18)
          CA3(I+2,J,K) = CMPLX (RR15, RR19)
          CA3(I+3,J,K) = CMPLX (RR16, RR20)
          CA3(I+4,J,K) = CMPLX (RR5, RR6)
          LB3(I,J,K) = I - J .GT. I + K
          LB3(I+1,J,K) = I - J .GT. I + K
          LB3(I+2,J,K) = I - J .GT. I + K
          LB3(I+3,J,K) = I - J .GT. I + K
          LB3(I+4,J,K) = I - J .GT. I + K
          LC3(I,J,K) = I * J .GT. I + K
          LC3(I+1,J,K) = (I + 1) * J .GT. I + K + 1
          LC3(I+2,J,K) = (I + 2) * J .GT. I + K + 2
          LC3(I+3,J,K) = (I + 3) * J .GT. I + K + 3
          LC3(I+4,J,K) = (I + 4) * J .GT. I + K + 4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 -----'
 
       INC = 1
 
       DO I=1,10
        IF (DC1(I) .GT. 0) THEN
         IF (DB1(I) .GT. SQRT (DC1(I))) THEN
          INC = INC + 1
          DB1(I) = DA1(INC)
         END IF
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
        DO K=2,6,4
 
         CA3(2,I,K+1) = CA3(2,I,K) * RA3(3,I,3)
         CA3(3,I,K+1) = CA3(3,I,K) * RA3(4,I,3)
         CA3(4,I,K+1) = CA3(4,I,K) * RA3(5,I,3)
         CA3(5,I,K+1) = CA3(5,I,K) * RA3(6,I,3)
         CA3(6,I,K+1) = CA3(6,I,K) * RA3(7,I,3)
         CA3(7,I,K+1) = CA3(7,I,K) * RA3(8,I,3)
         CA3(8,I,K+1) = CA3(8,I,K) * RA3(9,I,3)
         CA3(9,I,K+1) = CA3(9,I,K) * RA3(10,I,3)
         CA3(2,I,K+2) = CA3(2,I,K+1) * RA3(3,I,3)
         CA3(3,I,K+2) = CA3(3,I,K+1) * RA3(4,I,3)
         CA3(4,I,K+2) = CA3(4,I,K+1) * RA3(5,I,3)
         CA3(5,I,K+2) = CA3(5,I,K+1) * RA3(6,I,3)
         CA3(6,I,K+2) = CA3(6,I,K+1) * RA3(7,I,3)
         CA3(7,I,K+2) = CA3(7,I,K+1) * RA3(8,I,3)
         CA3(8,I,K+2) = CA3(8,I,K+1) * RA3(9,I,3)
         CA3(9,I,K+2) = CA3(9,I,K+1) * RA3(10,I,3)
         CA3(2,I,K+3) = CA3(2,I,K+2) * RA3(3,I,3)
         CA3(3,I,K+3) = CA3(3,I,K+2) * RA3(4,I,3)
         CA3(4,I,K+3) = CA3(4,I,K+2) * RA3(5,I,3)
         CA3(5,I,K+3) = CA3(5,I,K+2) * RA3(6,I,3)
         CA3(6,I,K+3) = CA3(6,I,K+2) * RA3(7,I,3)
         CA3(7,I,K+3) = CA3(7,I,K+2) * RA3(8,I,3)
         CA3(8,I,K+3) = CA3(8,I,K+2) * RA3(9,I,3)
         CA3(9,I,K+3) = CA3(9,I,K+2) * RA3(10,I,3)
         CA3(2,I,K+4) = CA3(2,I,K+3) * RA3(3,I,3)
         CA3(3,I,K+4) = CA3(3,I,K+3) * RA3(4,I,3)
         CA3(4,I,K+4) = CA3(4,I,K+3) * RA3(5,I,3)
         CA3(5,I,K+4) = CA3(5,I,K+3) * RA3(6,I,3)
         CA3(6,I,K+4) = CA3(6,I,K+3) * RA3(7,I,3)
         CA3(7,I,K+4) = CA3(7,I,K+3) * RA3(8,I,3)
         CA3(8,I,K+4) = CA3(8,I,K+3) * RA3(9,I,3)
         CA3(9,I,K+4) = CA3(9,I,K+3) * RA3(10,I,3)
        END DO
 

        DO J=1,6,5
         CA1(J) = CB1(J) * CA3(I,J,5)
         CA1(J+1) = CB1(J+1) * CA3(I,J+1,5)
         CA1(J+2) = CB1(J+2) * CA3(I,J+2,5)
         CA1(J+3) = CB1(J+3) * CA3(I,J+3,5)
         CA1(J+4) = CB1(J+4) * CA3(I,J+4,5)
        END DO
       END DO
 
       DO J=1,10
 
        IF (RC1(J) .NE. 0) THEN
         II2 = IB1(J) / INT (RC1(J))
 
         IA1(J) = II2
        ELSE
         II3 = IB1(J)
         IA1(J) = II3
        END IF
       END DO
 
C$OMP PARALLEL SHARED (DA3) PRIVATE (I,K)
C$OMP DO 
       DO I=1,10
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
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
 
       DO J=2,9
 
        DO I=1,10
 
         IF (DC2(I,J) .GT. 0.) THEN
          DA2(I,J) = SIN (DB2(I,J)) * SQRT (DC2(I,J))
         END IF
        END DO
       END DO
 
       DO I=1,6,5
 
        LL1 = LB3(I,2,2) .AND. LC3(I,2,2)
        LL2 = LB3(I+1,2,2) .AND. LC3(I+1,2,2)
        LL3 = LB3(I+2,2,2) .AND. LC3(I+2,2,2)
        LL4 = LB3(I+3,2,2) .AND. LC3(I+3,2,2)
        LL5 = LB3(I+4,2,2) .AND. LC3(I+4,2,2)
        LB3(I+4,2,2) = LL5
        LB3(I+3,2,2) = LL4
        LB3(I+2,2,2) = LL3
        LB3(I+1,2,2) = LL2
        LB3(I,2,2) = LL1
       END DO
 
 
       WRITE (6, *) '### DB1 ###'
       WRITE (6, 90) DB1
       WRITE (6, *) '### RA3 ###'
       WRITE (6, 90) RA3
       WRITE (6, *) '### IA1 ###'
       WRITE (6, 91) IA1
       WRITE (6, *) '### DA3 ###'
       WRITE (6, 90) DA3
       WRITE (6, *) '### CA3 ###'
       WRITE (6, 99) CA3
       WRITE (6, *) '### DA2 ###'
       WRITE (6, 90) DA2
       WRITE (6, *) '### CA1 ###'
       WRITE (6, 90) CA1
       WRITE (6, *) '### IA2 ###'
       WRITE (6, 90) CA2
       WRITE (6, *) '### LB3 ###'
       WRITE (6, 92) LB3
 
   90  FORMAT(3X,5F12.6)
   91  FORMAT(3X,5I12.6)
   92  FORMAT(3X,10L5)
   99  FORMAT(3X,4G15.2)
 
       STOP 
      END
