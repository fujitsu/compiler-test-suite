      PROGRAM MAIN
       REAL*4 R1(20), R2(20), R3(20), R4(20), R5(20), R6(20,20,20)
       INTEGER N
       PARAMETER (N = 10)
       REAL RR30, RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, 
     X   RR20, RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, 
     X   RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1


       DO I=1,17,4
        RR19 = 1.
        RR20 = 1.
        RR21 = 1.
        RR22 = 1.
        RR23 = 1. + RR19
        RR24 = 1. + RR20
        RR25 = 1. + RR21
        RR26 = 1. + RR22
        R3(I) = 1. + RR23
        R3(I+1) = 1. + RR24
        R3(I+2) = 1. + RR25
        R3(I+3) = 1. + RR26
        RR27 = I
        RR28 = I + 1
        RR29 = I + 2
        RR30 = I + 3
        R5(I) = 1. + RR27
        R5(I+1) = 1. + RR28
        R5(I+2) = 1. + RR29
        R5(I+3) = 1. + RR30
        R4(I+3) = RR30
        R4(I+2) = RR29
        R4(I+1) = RR28
        R4(I) = RR27
        R2(I+3) = RR26
        R2(I+2) = RR25
        R2(I+1) = RR24
        R2(I) = RR23
        R1(I+3) = RR22
        R1(I+2) = RR21
        R1(I+1) = RR20
        R1(I) = RR19
       END DO
C$OMP PARALLEL SHARED (R2,R6,R1) PRIVATE (RR1,RR2,RR3,RR4,K,J,I)
C$OMP DO 
       DO K=1,20
        DO J=1,17,4
         RR1 = R2(J)
         RR2 = R2(J+1)
         RR3 = R2(J+2)
         RR4 = R2(J+3)

         DO I=1,17,4
          R6(I,J,K) = R1(I) + RR1
          R6(I+1,J,K) = R1(I+1) + RR1
          R6(I+2,J,K) = R1(I+2) + RR1
          R6(I+3,J,K) = R1(I+3) + RR1
          R6(I,J+1,K) = R1(I) + RR2
          R6(I+1,J+1,K) = R1(I+1) + RR2
          R6(I+2,J+1,K) = R1(I+2) + RR2
          R6(I+3,J+1,K) = R1(I+3) + RR2
          R6(I,J+2,K) = R1(I) + RR3
          R6(I+1,J+2,K) = R1(I+1) + RR3
          R6(I+2,J+2,K) = R1(I+2) + RR3
          R6(I+3,J+2,K) = R1(I+3) + RR3
          R6(I,J+3,K) = R1(I) + RR4
          R6(I+1,J+3,K) = R1(I+1) + RR4
          R6(I+2,J+3,K) = R1(I+2) + RR4
          R6(I+3,J+3,K) = R1(I+3) + RR4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,10
        R1(I1) = I1
        R2(I1) = R1(I1) + I1
        RR7 = R1(I1+1)
        RR8 = R2(I1+1)
        RR5 = R1(I1+1)
        DO I2=1,10
         R3(I2) = RR7 + I2
         R4(I2) = RR8 + R4(I2+1)
         RR6 = RR5 + RR8 + R3(I2+1) + R4(I2+1)
         DO I3=1,6,5
          R5(I3) = RR6
          R6(I1,I2,I3) = R5(I3+1) + I3 + RR5 + I1
          R5(I3+1) = RR6
          R6(I1,I2,I3+1) = 1 + R5(I3+2) + I3 + RR5 + I1
          R5(I3+2) = RR6
          R6(I1,I2,I3+2) = 2 + R5(I3+3) + I3 + RR5 + I1
          R5(I3+3) = RR6
          R6(I1,I2,I3+3) = 3 + R5(I3+4) + I3 + RR5 + I1
          R5(I3+4) = RR6
          R6(I1,I2,I3+4) = 4 + R5(I3+5) + I3 + RR5 + I1
         END DO
        END DO
       END DO

       WRITE (6, *) '+++ TEST NO. 1 +++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        RR10 = R5(I1+1)
        DO I2=1,10
         RR9 = R3(I2+1) + R4(I2+1)
         DO I3=1,6,5
          R1(I3) = R2(I3+1) + I1
          R2(I3) = RR9
          R6(I1,I2,I3) = R1(I3+1) + RR10 + I1
          R1(I3+1) = R2(I3+2) + I1
          R2(I3+1) = RR9
          R6(I1,I2,I3+1) = R1(I3+2) + RR10 + I1
          R1(I3+2) = R2(I3+3) + I1
          R2(I3+2) = RR9
          R6(I1,I2,I3+2) = R1(I3+3) + RR10 + I1
          R1(I3+3) = R2(I3+4) + I1
          R2(I3+3) = RR9
          R6(I1,I2,I3+3) = R1(I3+4) + RR10 + I1
          R1(I3+4) = R2(I3+5) + I1
          R2(I3+4) = RR9
          R6(I1,I2,I3+4) = R1(I3+5) + RR10 + I1
         END DO
         R3(I2) = 1. + I2
         R4(I2) = 1. + R3(I2)
        END DO
        R5(I1) = 1.
       END DO

       WRITE (6, *) '+++++ TEST NO. 2 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        R1(I1) = 1.
        R2(I1) = R1(I1) + I1
        RR13 = R1(I1+1)
        RR14 = R2(I1+1)
        RR15 = R1(I1) + R2(I1)
        RR11 = RR13 + RR14
        DO I2=1,10
         R3(I2) = RR13 + I2
         R4(I2) = RR14 + R3(I2+1)
         RR12 = R3(I2+1) + RR13
         DO I3=1,6,5
          R5(I3) = RR11 + I3
          R5(I3+1) = 1 + RR11 + I3
          R5(I3+2) = 2 + RR11 + I3
          R5(I3+3) = 3 + RR11 + I3
          R5(I3+4) = 4 + RR11 + I3
          R6(I1,I2,I3) = RR12
          R6(I1,I2,I3+1) = RR12
          R6(I1,I2,I3+2) = RR12
          R6(I1,I2,I3+3) = RR12
          R6(I1,I2,I3+4) = RR12
         END DO
         R3(I2) = RR15
        END DO
        R1(I1) = R1(I1) + I1
        R2(I1) = R2(I1) + R1(I1)
       END DO

       WRITE (6, *) '+++++ TEST NO. 3 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        DO I2=1,10
         R1(I2) = I1 + I2
         R2(I2) = R1(I2) * 2.
         RR16 = R3(I2+1)
         RR18 = 1. + R1(I2+1)
         DO I3=1,6,5
          RR17 = RR16 + I3
          R6(I1,I2,I3) = RR18
          RR17 = 1 + RR16 + I3
          R6(I1,I2,I3+1) = RR18
          RR17 = 2 + RR16 + I3
          R6(I1,I2,I3+2) = RR18
          RR17 = 3 + RR16 + I3
          R6(I1,I2,I3+3) = RR18
          RR17 = 4 + RR16 + I3
          R6(I1,I2,I3+4) = RR18
         END DO
         R3(I2) = RR17
        END DO
       END DO

       WRITE (6, *) '+++++ TEST NO. 4 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6


       STOP 
      END
