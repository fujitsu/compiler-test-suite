      PROGRAM MAIN
       REAL*4 R1(10), R2(10), R3(10), R4(10), R5(10), R6(10,10,10)
       INTEGER N
       PARAMETER (N = 10)
       REAL RR53, RR52, RR51, RR50, RR49, RR48, RR47, RR46, RR45, RR44, 
     X   RR43, RR42, RR41, RR40, RR39, RR38, RR37, RR36, RR35, RR34, 
     X   RR33, RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, 
     X   RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14
       REAL RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, 
     X   RR2, RR1

       DO I=1,6,5
        RR34 = 1.
        RR35 = 1.
        RR36 = 1.
        RR37 = 1.
        RR38 = 1.
        RR39 = 1. + RR34
        RR40 = 1. + RR35
        RR41 = 1. + RR36
        RR42 = 1. + RR37
        RR43 = 1. + RR38
        RR44 = 1. + RR39
        RR45 = 1. + RR40
        RR46 = 1. + RR41
        RR47 = 1. + RR42
        RR48 = 1. + RR43
        RR49 = 0.
        RR50 = 0.
        RR51 = 0.
        RR52 = 0.
        RR53 = 0.
        RR22 = RR49 + RR44
        RR23 = RR50 + RR45
        RR24 = RR51 + RR46
        RR25 = RR52 + RR47
        RR19 = RR53 + RR48
        R5(I) = RR22 + RR39
        R5(I+1) = RR23 + RR40
        R5(I+2) = RR24 + RR41
        R5(I+3) = RR25 + RR42
        R5(I+4) = RR19 + RR43
        R4(I+4) = RR53
        R4(I+3) = RR52
        R4(I+2) = RR51
        R4(I+1) = RR50
        R4(I) = RR49
        R3(I+4) = RR48
        R3(I+3) = RR47
        R3(I+2) = RR46
        R3(I+1) = RR45
        R3(I) = RR44
        R2(I+4) = RR43
        R2(I+3) = RR42
        R2(I+2) = RR41
        R2(I+1) = RR40
        R2(I) = RR39
        R1(I+4) = RR38
        R1(I+3) = RR37
        R1(I+2) = RR36
        R1(I+1) = RR35
        R1(I) = RR34
       END DO
C$OMP PARALLEL SHARED (R3,R2,R1,R6) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7
C$OMP& ,RR20,RR21,RR26,RR27,RR28,RR29,RR30,RR31,RR32,RR33,K,J,I)
C$OMP DO 
       DO K=1,10
        RR1 = R3(K)
        DO J=1,7,4
         RR2 = R2(J)
         RR3 = R2(J+1)
         RR4 = R2(J+2)
         RR5 = R2(J+3)

         DO I=1,6,5
          RR26 = R1(I) + RR2
          RR27 = R1(I+1) + RR2
          RR28 = R1(I+2) + RR2
          RR29 = R1(I+3) + RR2
          RR20 = R1(I+4) + RR2
          R6(I,J,K) = RR26 + RR1
          R6(I+1,J,K) = RR27 + RR1
          R6(I+2,J,K) = RR28 + RR1
          R6(I+3,J,K) = RR29 + RR1
          R6(I+4,J,K) = RR20 + RR1
          RR26 = R1(I) + RR3
          RR27 = R1(I+1) + RR3
          RR28 = R1(I+2) + RR3
          RR29 = R1(I+3) + RR3
          RR20 = R1(I+4) + RR3
          R6(I,J+1,K) = RR26 + RR1
          R6(I+1,J+1,K) = RR27 + RR1
          R6(I+2,J+1,K) = RR28 + RR1
          R6(I+3,J+1,K) = RR29 + RR1
          R6(I+4,J+1,K) = RR20 + RR1
          RR26 = R1(I) + RR4
          RR27 = R1(I+1) + RR4
          RR28 = R1(I+2) + RR4
          RR29 = R1(I+3) + RR4
          RR20 = R1(I+4) + RR4
          R6(I,J+2,K) = RR26 + RR1
          R6(I+1,J+2,K) = RR27 + RR1
          R6(I+2,J+2,K) = RR28 + RR1
          R6(I+3,J+2,K) = RR29 + RR1
          R6(I+4,J+2,K) = RR20 + RR1
          RR26 = R1(I) + RR5
          RR27 = R1(I+1) + RR5
          RR28 = R1(I+2) + RR5
          RR29 = R1(I+3) + RR5
          RR20 = R1(I+4) + RR5
          R6(I,J+3,K) = RR26 + RR1
          R6(I+1,J+3,K) = RR27 + RR1
          R6(I+2,J+3,K) = RR28 + RR1
          R6(I+3,J+3,K) = RR29 + RR1
          R6(I+4,J+3,K) = RR20 + RR1
         END DO
        END DO
        RR6 = R3(K)
        DO J=9,10,1
         RR7 = R2(J)

         DO I=1,6,5
          RR30 = R1(I) + RR7
          RR31 = R1(I+1) + RR7
          RR32 = R1(I+2) + RR7
          RR33 = R1(I+3) + RR7
          RR21 = R1(I+4) + RR7
          R6(I,J,K) = RR30 + RR6
          R6(I+1,J,K) = RR31 + RR6
          R6(I+2,J,K) = RR32 + RR6
          R6(I+3,J,K) = RR33 + RR6
          R6(I+4,J,K) = RR21 + RR6
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,10
        R1(I1) = I1
        RR9 = R2(I1) + R1(I1)
        DO I2=1,10
         R3(I2) = R3(I2) + I2
         R4(I2) = RR9
         RR8 = R3(I2)
         DO I3=1,6,5
          R5(I3) = 1. + R4(I3)
          R5(I3+1) = 1. + R4(I3+1)
          R5(I3+2) = 1. + R4(I3+2)
          R5(I3+3) = 1. + R4(I3+3)
          R5(I3+4) = 1. + R4(I3+4)
          R6(I1,I2,I3) = RR8 + R4(I3)
          R6(I1,I2,I3+1) = RR8 + R4(I3+1)
          R6(I1,I2,I3+2) = RR8 + R4(I3+2)
          R6(I1,I2,I3+3) = RR8 + R4(I3+3)
          R6(I1,I2,I3+4) = RR8 + R4(I3+4)
         END DO
        END DO
       END DO

       WRITE (6, *) '+++ TEST NO. 1 +++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        RR13 = R4(I1)
        DO I2=1,10
         RR12 = R5(I2)
         RR10 = R3(I2) + I1
         RR11 = R3(I2) + RR13
         DO I3=1,6,5
          R6(I1,I2,I3) = RR10 + RR12
          R6(I1,I2,I3+1) = RR10 + RR12
          R6(I1,I2,I3+2) = RR10 + RR12
          R6(I1,I2,I3+3) = RR10 + RR12
          R6(I1,I2,I3+4) = RR10 + RR12
         END DO
         R3(I2) = 1.
         RR13 = R3(I1)
        END DO
        R2(I1) = RR11
        R1(I1) = RR10
        R4(I1) = RR13
        R1(I1) = 1.
       END DO

       DO I1=1,6,5
        R2(I1) = 0.
        R2(I1+1) = 0.
        R2(I1+2) = 0.
        R2(I1+3) = 0.
        R2(I1+4) = 0.
       END DO

       WRITE (6, *) '+++++ TEST NO. 2 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        R1(I1) = 1.
        R2(I1) = R1(I1) + I1
        RR16 = R1(I1)
        RR17 = R2(I1)
        RR18 = RR16 + RR17
        RR14 = RR16 + RR17
        DO I2=1,10
         R3(I2) = RR16 + I2
         R4(I2) = RR17 + R3(I2)
         RR15 = R3(I2) + RR16
         DO I3=1,6,5
          R5(I3) = RR14 + I3
          R5(I3+1) = 1 + RR14 + I3
          R5(I3+2) = 2 + RR14 + I3
          R5(I3+3) = 3 + RR14 + I3
          R5(I3+4) = 4 + RR14 + I3
          R6(I1,I2,I3) = RR15
          R6(I1,I2,I3+1) = RR15
          R6(I1,I2,I3+2) = RR15
          R6(I1,I2,I3+3) = RR15
          R6(I1,I2,I3+4) = RR15
         END DO
         R3(I2) = RR18
        END DO
        R1(I1) = R1(I1) + I1
        R2(I1) = R2(I1) + R1(I1)
       END DO

       WRITE (6, *) '+++++ TEST NO. 3 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6
C$OMP PARALLEL SHARED (R1,R2,R6,R3) PRIVATE (I2,I1,I3)
C$OMP DO 
       DO I2=1,10

        DO I1=1,10
         R1(I2) = I1 + I2
         R2(I2) = R1(I2) * 2.
         DO I3=1,6,5
          R3(I2) = R3(I2) + I3
          R6(I1,I2,I3) = 1. + R1(I2)
          R3(I2) = 1 + R3(I2) + I3
          R6(I1,I2,I3+1) = 1. + R1(I2)
          R3(I2) = 2 + R3(I2) + I3
          R6(I1,I2,I3+2) = 1. + R1(I2)
          R3(I2) = 3 + R3(I2) + I3
          R6(I1,I2,I3+3) = 1. + R1(I2)
          R3(I2) = 4 + R3(I2) + I3
          R6(I1,I2,I3+4) = 1. + R1(I2)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '+++++ TEST NO. 4 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6


       STOP 
      END
