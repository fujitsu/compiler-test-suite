      PROGRAM MAIN
       REAL*4 R1(20), R2(20), R3(20), R4(20,20,20)
       INTEGER M, N
       PARAMETER (M = 10, N = 10)
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1, I31, I21
       REAL RR69, RR68, RR67, RR66, RR65, RR64, RR63, RR62, RR61, RR60, 
     X   RR59, RR58, RR57, RR56, RR55, RR54, RR53, RR52, RR51, RR50, 
     X   RR49, RR48, RR47, RR46, RR45, RR44, RR43, RR42, RR41, RR40, 
     X   RR39, RR38, RR37, RR36, RR35, RR34, RR33, RR32, RR31, RR30
       REAL RR29, RR28, RR27, RR26, RR25, RR24, RR23, RR22, RR21, RR20, 
     X   RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9
     X   , RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1

       DO I=1,17,4
        RR53 = I
        RR54 = I + 1
        RR55 = I + 2
        RR56 = I + 3
        R2(I) = 1. + RR53
        R2(I+1) = 1. + RR54
        R2(I+2) = 1. + RR55
        R2(I+3) = 1. + RR56
        R3(I) = 1.
        R3(I+1) = 1.
        R3(I+2) = 1.
        R3(I+3) = 1.
        R1(I+3) = RR56
        R1(I+2) = RR55
        R1(I+1) = RR54
        R1(I) = RR53
       END DO
C$OMP PARALLEL SHARED (R4) PRIVATE (I31,I21,I1)
C$OMP DO 
       DO I31=1,20
        DO I21=1,17,4
         DO I1=1,17,4
          R4(I1,I21,I31) = I1 + I21 + I31
          R4(I1+1,I21,I31) = I1 + I21 + I31 + 1
          R4(I1+2,I21,I31) = I1 + I21 + I31 + 2
          R4(I1+3,I21,I31) = I1 + I21 + I31 + 3
          R4(I1,I21+1,I31) = I1 + I21 + I31 + 1
          R4(I1+1,I21+1,I31) = I1 + I21 + I31 + 2
          R4(I1+2,I21+1,I31) = I1 + I21 + I31 + 3
          R4(I1+3,I21+1,I31) = I1 + I21 + I31 + 4
          R4(I1,I21+2,I31) = I1 + I21 + I31 + 2
          R4(I1+1,I21+2,I31) = I1 + I21 + I31 + 3
          R4(I1+2,I21+2,I31) = I1 + I21 + I31 + 4
          R4(I1+3,I21+2,I31) = I1 + I21 + I31 + 5
          R4(I1,I21+3,I31) = I1 + I21 + I31 + 3
          R4(I1+1,I21+3,I31) = I1 + I21 + I31 + 4
          R4(I1+2,I21+3,I31) = I1 + I21 + I31 + 5
          R4(I1+3,I21+3,I31) = I1 + I21 + I31 + 6
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=1,10
        R1(I1) = R1(I1*2) + I1
        RR3 = R1(I1)
        RR9 = R1(I1)
        DO I21=1,10
         R2(I21) = R2(I21*2) + I21
         DO I31=1,6,5
          R3(I31) = R3(I31*2) + I31
          R3(I31+1) = 1 + R3(I31*2+2) + I31
          R3(I31+2) = 2 + R3(I31*2+4) + I31
          R3(I31+3) = 3 + R3(I31*2+6) + I31
          R3(I31+4) = 4 + R3(I31*2+8) + I31
         END DO
         RR2 = R2(I21)
         DO I31=1,7,4
          RR1 = R3(I31)
          RR4 = R3(I31+1)
          II1 = I21 + I31 + 1
          II2 = I31 + I21 + 1
          RR5 = R3(I31+2)
          II3 = I21 + I31 + 2
          II4 = I31 + I21 + 2
          RR6 = R3(I31+3)
          II5 = I21 + I31 + 3
          II6 = I31 + I21 + 3
          DO I4=1,6,5
           RR27 = R4(I4+I1,I31+I21,I21+I31) + RR3
           RR28 = R4(I4+I1+1,I31+I21,I21+I31) + RR3
           RR29 = R4(I4+I1+2,I31+I21,I21+I31) + RR3
           RR30 = R4(I4+I1+3,I31+I21,I21+I31) + RR3
           RR20 = R4(I4+I1+4,I31+I21,I21+I31) + RR3
           RR31 = RR27 + RR2
           RR32 = RR28 + RR2
           RR33 = RR29 + RR2
           RR34 = RR30 + RR2
           RR19 = RR20 + RR2
           R4(I4,I31,I21) = RR31 + RR1
           R4(I4+1,I31,I21) = RR32 + RR1
           R4(I4+2,I31,I21) = RR33 + RR1
           R4(I4+3,I31,I21) = RR34 + RR1
           R4(I4+4,I31,I21) = RR19 + RR1
           RR27 = R4(I4+I1,II2,II1) + RR3
           RR28 = R4(I4+I1+1,II2,II1) + RR3
           RR29 = R4(I4+I1+2,II2,II1) + RR3
           RR30 = R4(I4+I1+3,II2,II1) + RR3
           RR20 = R4(I4+I1+4,II2,II1) + RR3
           RR31 = RR27 + RR2
           RR32 = RR28 + RR2
           RR33 = RR29 + RR2
           RR34 = RR30 + RR2
           RR19 = RR20 + RR2
           R4(I4,I31+1,I21) = RR31 + RR4
           R4(I4+1,I31+1,I21) = RR32 + RR4
           R4(I4+2,I31+1,I21) = RR33 + RR4
           R4(I4+3,I31+1,I21) = RR34 + RR4
           R4(I4+4,I31+1,I21) = RR19 + RR4
           RR27 = R4(I4+I1,II4,II3) + RR3
           RR28 = R4(I4+I1+1,II4,II3) + RR3
           RR29 = R4(I4+I1+2,II4,II3) + RR3
           RR30 = R4(I4+I1+3,II4,II3) + RR3
           RR20 = R4(I4+I1+4,II4,II3) + RR3
           RR31 = RR27 + RR2
           RR32 = RR28 + RR2
           RR33 = RR29 + RR2
           RR34 = RR30 + RR2
           RR19 = RR20 + RR2
           R4(I4,I31+2,I21) = RR31 + RR5
           R4(I4+1,I31+2,I21) = RR32 + RR5
           R4(I4+2,I31+2,I21) = RR33 + RR5
           R4(I4+3,I31+2,I21) = RR34 + RR5
           R4(I4+4,I31+2,I21) = RR19 + RR5
           RR27 = R4(I4+I1,II6,II5) + RR3
           RR28 = R4(I4+I1+1,II6,II5) + RR3
           RR29 = R4(I4+I1+2,II6,II5) + RR3
           RR30 = R4(I4+I1+3,II6,II5) + RR3
           RR20 = R4(I4+I1+4,II6,II5) + RR3
           RR31 = RR27 + RR2
           RR32 = RR28 + RR2
           RR33 = RR29 + RR2
           RR34 = RR30 + RR2
           RR19 = RR20 + RR2
           R4(I4,I31+3,I21) = RR31 + RR6
           R4(I4+1,I31+3,I21) = RR32 + RR6
           R4(I4+2,I31+3,I21) = RR33 + RR6
           R4(I4+3,I31+3,I21) = RR34 + RR6
           R4(I4+4,I31+3,I21) = RR19 + RR6
          END DO
         END DO
         RR8 = R2(I21)
         DO I31=9,10,1
          RR7 = R3(I31)
          DO I4=1,6,5
           RR35 = R4(I4+I1,I31+I21,I21+I31) + RR9
           RR36 = R4(I4+I1+1,I31+I21,I21+I31) + RR9
           RR37 = R4(I4+I1+2,I31+I21,I21+I31) + RR9
           RR38 = R4(I4+I1+3,I31+I21,I21+I31) + RR9
           RR22 = R4(I4+I1+4,I31+I21,I21+I31) + RR9
           RR39 = RR35 + RR8
           RR40 = RR36 + RR8
           RR41 = RR37 + RR8
           RR42 = RR38 + RR8
           RR21 = RR22 + RR8
           R4(I4,I31,I21) = RR39 + RR7
           R4(I4+1,I31,I21) = RR40 + RR7
           R4(I4+2,I31,I21) = RR41 + RR7
           R4(I4+3,I31,I21) = RR42 + RR7
           R4(I4+4,I31,I21) = RR21 + RR7
          END DO
         END DO
        END DO
       END DO

       WRITE (6, *) '+++++ TEST 1 ++++'
       WRITE (6, *) R1, R2, R3, R4


       DO I1=1,10
        DO I21=2,10
         DO I31=1,10
          II7 = 11 - I31
          IF (II7 .GT. 0) THEN
           RR10 = R3(I31*2)
           RR11 = R2(I21*2)
           RR12 = R1(I1*2)
           II9 = (11 - I31) / 4
           II8 = I31 + II9 * 4
           DO I4=I31,7,4
            RR43 = R4(I21+10,I31+1,I4+10) + RR12
            RR44 = R4(I21+10,I31+1,I4+11) + RR12
            RR45 = R4(I21+10,I31+1,I4+12) + RR12
            RR24 = R4(I21+10,I31+1,I4+13) + RR12
            RR46 = RR43 + RR11
            RR47 = RR44 + RR11
            RR48 = RR45 + RR11
            RR23 = RR24 + RR11
            R4(I21+1,I31+1,I4) = RR46 + RR10
            R4(I21+1,I31+1,I4+1) = RR47 + RR10
            R4(I21+1,I31+1,I4+2) = RR48 + RR10
            R4(I21+1,I31+1,I4+3) = RR23 + RR10
           END DO
           DO I4=II8,10,1
            RR24 = R4(I21+10,I31+1,I4+10) + RR12
            RR23 = RR24 + RR11
            R4(I21+1,I31+1,I4) = RR23 + RR10
           END DO
          END IF
          R3(I31) = 1.
         END DO
         R2(I21) = 2.
        END DO
       END DO

       DO I1=1,6,5
        R1(I1) = 4.
        R1(I1+1) = 4.
        R1(I1+2) = 4.
        R1(I1+3) = 4.
        R1(I1+4) = 4.
       END DO

       WRITE (6, *) '+++++ TEST 2 +++'
       WRITE (6, *) R4, R1, R2, R3

       DO I1=1,10
        R1(I1) = 1. + R1(I1*2)
        RR15 = R1(I1)
        DO I21=1,10
         R2(I21) = 2. + R2(I21*2)
         DO I31=2,8,3
          R3(I31) = 3. + R3(I31*2)
          R3(I31+1) = 3. + R3(I31*2+2)
          R3(I31+2) = 3. + R3(I31*2+4)
         END DO
         RR14 = R2(I21)
         DO I31=2,10
          RR13 = R3(I31)
          DO I4=2,8,3
           RR49 = R4(I21+I1,I31+I21,I4+I31) + RR15
           RR50 = R4(I21+I1,I31+I21,I4+I31+1) + RR15
           RR26 = R4(I21+I1,I31+I21,I4+I31+2) + RR15
           RR51 = RR49 + RR14
           RR52 = RR50 + RR14
           RR25 = RR26 + RR14
           R4(I21,I31,I4) = RR51 + RR13
           R4(I21,I31,I4+1) = RR52 + RR13
           R4(I21,I31,I4+2) = RR25 + RR13
          END DO
         END DO
         RR16 = R2(I21)
         DO I31=2,8,3
          RR57 = R3(I31) + RR16
          RR58 = R3(I31+1) + RR16
          RR59 = R3(I31+2) + RR16
          R3(I31+2) = RR59
          R3(I31+1) = RR58
          R3(I31) = RR57
         END DO
        END DO
        RR17 = R3(11)
        DO I21=1,6,5
         RR60 = RR17 + R2(I21)
         RR61 = RR17 + R2(I21+1)
         RR62 = RR17 + R2(I21+2)
         RR63 = RR17 + R2(I21+3)
         RR64 = RR17 + R2(I21+4)
         R2(I21+4) = RR64
         R2(I21+3) = RR63
         R2(I21+2) = RR62
         R2(I21+1) = RR61
         R2(I21) = RR60
        END DO
       END DO

       RR18 = R2(11)
       DO I1=1,6,5
        RR65 = R1(I1) + RR18
        RR66 = R1(I1+1) + RR18
        RR67 = R1(I1+2) + RR18
        RR68 = R1(I1+3) + RR18
        RR69 = R1(I1+4) + RR18
        R1(I1+4) = RR69
        R1(I1+3) = RR68
        R1(I1+2) = RR67
        R1(I1+1) = RR66
        R1(I1) = RR65
       END DO

       WRITE (6, *) '+++ TEST 3 +++'
       WRITE (6, *) R1, R2, R3, R4


       STOP 
      END
