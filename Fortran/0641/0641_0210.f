      PROGRAM MAIN
       REAL*4 R1(10), R2(11), R3(10), R4(10), R5(10), R6(10,10,10)
       INTEGER N
       PARAMETER (N = 10)
       INTEGER I21, II1
       REAL RR67, RR66, RR65, RR64, RR63, RR62, RR61, RR60, RR59, RR58, 
     X   RR57, RR56, RR55, RR54, RR53, RR52, RR51, RR50, RR49, RR48, 
     X   RR47, RR46, RR45, RR44, RR43, RR42, RR41, RR40, RR39, RR38, 
     X   RR37, RR36, RR35, RR34, RR33, RR32, RR31, RR30, RR29, RR28
       REAL RR27, RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, 
     X   RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, 
     X   RR6, RR5, RR4, RR3, RR2, RR1

       DO II1=1,8,4
        R2(II1) = 0.
        R2(II1+1) = 0.
        R2(II1+2) = 0.
        R2(II1+3) = 0.
       END DO
       DO II1=9,11,1
        R2(II1) = 0.
       END DO

       DO I=1,6,5
        RR38 = 1.
        RR39 = 1.
        RR40 = 1.
        RR41 = 1.
        RR42 = 1.
        RR43 = 1. + RR38
        RR44 = 1. + RR39
        RR45 = 1. + RR40
        RR46 = 1. + RR41
        RR47 = 1. + RR42
        RR48 = 1. + RR43
        RR49 = 1. + RR44
        RR50 = 1. + RR45
        RR51 = 1. + RR46
        RR52 = 1. + RR47
        RR53 = 0.
        RR54 = 0.
        RR55 = 0.
        RR56 = 0.
        RR57 = 0.
        RR22 = RR53 + RR48
        RR23 = RR54 + RR49
        RR24 = RR55 + RR50
        RR25 = RR56 + RR51
        RR18 = RR57 + RR52
        R5(I) = RR22 + RR43
        R5(I+1) = RR23 + RR44
        R5(I+2) = RR24 + RR45
        R5(I+3) = RR25 + RR46
        R5(I+4) = RR18 + RR47
        R4(I+4) = RR57
        R4(I+3) = RR56
        R4(I+2) = RR55
        R4(I+1) = RR54
        R4(I) = RR53
        R3(I+4) = RR52
        R3(I+3) = RR51
        R3(I+2) = RR50
        R3(I+1) = RR49
        R3(I) = RR48
        R2(I+4) = RR47
        R2(I+3) = RR46
        R2(I+2) = RR45
        R2(I+1) = RR44
        R2(I) = RR43
        R1(I+4) = RR42
        R1(I+3) = RR41
        R1(I+2) = RR40
        R1(I+1) = RR39
        R1(I) = RR38
       END DO
C$OMP PARALLEL SHARED (R3,R2,R1,R6) PRIVATE (RR1,RR2,RR3,RR4,RR5,RR6,RR7
C$OMP& ,RR19,RR20,RR26,RR27,RR28,RR29,RR30,RR31,RR32,RR33,K,J,I)
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
          RR19 = R1(I+4) + RR2
          R6(I,J,K) = RR26 + RR1
          R6(I+1,J,K) = RR27 + RR1
          R6(I+2,J,K) = RR28 + RR1
          R6(I+3,J,K) = RR29 + RR1
          R6(I+4,J,K) = RR19 + RR1
          RR26 = R1(I) + RR3
          RR27 = R1(I+1) + RR3
          RR28 = R1(I+2) + RR3
          RR29 = R1(I+3) + RR3
          RR19 = R1(I+4) + RR3
          R6(I,J+1,K) = RR26 + RR1
          R6(I+1,J+1,K) = RR27 + RR1
          R6(I+2,J+1,K) = RR28 + RR1
          R6(I+3,J+1,K) = RR29 + RR1
          R6(I+4,J+1,K) = RR19 + RR1
          RR26 = R1(I) + RR4
          RR27 = R1(I+1) + RR4
          RR28 = R1(I+2) + RR4
          RR29 = R1(I+3) + RR4
          RR19 = R1(I+4) + RR4
          R6(I,J+2,K) = RR26 + RR1
          R6(I+1,J+2,K) = RR27 + RR1
          R6(I+2,J+2,K) = RR28 + RR1
          R6(I+3,J+2,K) = RR29 + RR1
          R6(I+4,J+2,K) = RR19 + RR1
          RR26 = R1(I) + RR5
          RR27 = R1(I+1) + RR5
          RR28 = R1(I+2) + RR5
          RR29 = R1(I+3) + RR5
          RR19 = R1(I+4) + RR5
          R6(I,J+3,K) = RR26 + RR1
          R6(I+1,J+3,K) = RR27 + RR1
          R6(I+2,J+3,K) = RR28 + RR1
          R6(I+3,J+3,K) = RR29 + RR1
          R6(I+4,J+3,K) = RR19 + RR1
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
          RR20 = R1(I+4) + RR7
          R6(I,J,K) = RR30 + RR6
          R6(I+1,J,K) = RR31 + RR6
          R6(I+2,J,K) = RR32 + RR6
          R6(I+3,J,K) = RR33 + RR6
          R6(I+4,J,K) = RR20 + RR6
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,10
        R1(I1) = 1. + R1(I1)
        R2(I1) = R1(I1) + I1
        RR10 = R1(I1)
        RR11 = R2(I1)
        DO I21=1,10
         R3(I21) = RR10 + I21
         R4(I21) = RR11 + R4(I21)
         RR8 = R3(I1)
         RR9 = R2(I21)
         DO I3=1,6,5
          R5(I3) = R1(I3) + RR9 + RR8 + R4(I3)
          R6(I1,I21,I3) = R5(I1) + I3 + R1(I3) + I1
          R5(I3+1) = R1(I3+1) + RR9 + RR8 + R4(I3+1)
          R6(I1,I21,I3+1) = 1 + R5(I1) + I3 + R1(I3+1) + I1
          R5(I3+2) = R1(I3+2) + RR9 + RR8 + R4(I3+2)
          R6(I1,I21,I3+2) = 2 + R5(I1) + I3 + R1(I3+2) + I1
          R5(I3+3) = R1(I3+3) + RR9 + RR8 + R4(I3+3)
          R6(I1,I21,I3+3) = 3 + R5(I1) + I3 + R1(I3+3) + I1
          R5(I3+4) = R1(I3+4) + RR9 + RR8 + R4(I3+4)
          R6(I1,I21,I3+4) = 4 + R5(I1) + I3 + R1(I3+4) + I1
         END DO
        END DO
       END DO

       WRITE (6, *) '+++ TEST NO. 1 +++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        DO I21=1,10
         RR12 = R3(I21) + R4(I21)
         DO I3=1,6,5
          RR58 = R2(I3) + I1
          RR60 = R2(I3+1) + I1
          RR62 = R2(I3+2) + I1
          RR64 = R2(I3+3) + I1
          RR66 = R2(I3+4) + I1
          RR59 = RR12
          RR61 = RR12
          RR63 = RR12
          RR65 = RR12
          RR67 = RR12
          RR34 = RR58 + RR59
          RR35 = RR60 + RR61
          RR36 = RR62 + RR63
          RR37 = RR64 + RR65
          RR21 = RR66 + RR67
          R6(I1,I21,I3) = RR34 + I1
          R6(I1,I21,I3+1) = RR35 + I1
          R6(I1,I21,I3+2) = RR36 + I1
          R6(I1,I21,I3+3) = RR37 + I1
          R6(I1,I21,I3+4) = RR21 + I1
          R2(I3+4) = RR67
          R2(I3+3) = RR65
          R2(I3+2) = RR63
          R2(I3+1) = RR61
          R2(I3) = RR59
          R1(I3+4) = RR66
          R1(I3+3) = RR64
          R1(I3+2) = RR62
          R1(I3+1) = RR60
          R1(I3) = RR58
         END DO
         R1(I21) = 1. + I21
         R3(I1) = 1. + R3(I21)
        END DO
        R5(I1) = 1.
       END DO

       WRITE (6, *) '+++++ TEST NO. 2 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        R1(I1) = 1.
        R2(I1) = R1(I1) + I1
        RR16 = R1(I1)
        RR17 = RR16 + R2(I1)
        RR13 = RR16 + R2(I1)
        DO I21=1,10
         R3(I1) = R1(I21) + I21
         RR15 = R2(I21) + R3(I1)
         RR14 = R3(I21) + RR16
         DO I3=1,6,5
          R5(I3) = RR13 + I3
          R5(I3+1) = 1 + RR13 + I3
          R5(I3+2) = 2 + RR13 + I3
          R5(I3+3) = 3 + RR13 + I3
          R5(I3+4) = 4 + RR13 + I3
          R6(I1,I21,I3) = RR14
          R6(I1,I21,I3+1) = RR14
          R6(I1,I21,I3+2) = RR14
          R6(I1,I21,I3+3) = RR14
          R6(I1,I21,I3+4) = RR14
         END DO
         R3(I21) = RR17
        END DO
        R4(I1) = RR15
        R1(I1) = R1(I1) + I1
        R2(I1) = R2(11) + R1(I1)
       END DO

       WRITE (6, *) '+++++ TEST NO. 3 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6

       DO I1=1,10
        DO I21=1,10
         R1(I21) = I1 + I21
         R2(I21) = R1(I21) + R1(I1)
         DO I3=1,6,5
          R3(I21) = R3(I1) + I3
          R3(I21) = 1 + R3(I1) + I3
          R3(I21) = 2 + R3(I1) + I3
          R3(I21) = 3 + R3(I1) + I3
          R3(I21) = 4 + R3(I1) + I3
         END DO
         DO I3=1,6,5
          R6(I1,I21,I3) = 1. + R1(I3)
          R6(I1,I21,I3+1) = 1. + R1(I3+1)
          R6(I1,I21,I3+2) = 1. + R1(I3+2)
          R6(I1,I21,I3+3) = 1. + R1(I3+3)
          R6(I1,I21,I3+4) = 1. + R1(I3+4)
         END DO
        END DO
       END DO

       WRITE (6, *) '+++++ TEST NO. 4 +++++'
       WRITE (6, *) R1, R2, R3, R4, R5, R6


       STOP 
      END
