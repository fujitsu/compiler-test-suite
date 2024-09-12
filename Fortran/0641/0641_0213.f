      PROGRAM MAIN
       LOGICAL*4 L1(10), L2(10), L3(10), L4(10), L5(10,10,10,10)
       LOGICAL*4 LS1, LS2, LS3, LS4
       REAL*4 R1(10), R2(10), R3(10), R4(10), R5(10,10,10,10)
       REAL*4 RS1, RS2, RS3, RS4
       INTEGER N
       PARAMETER (N = 10)

       DATA L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       REAL RR47, RR46, RR45, RR44, RR43, RR42, RR41, RR40, RR39, RR38, 
     X   RR37, RR36, RR35, RR34, RR33, RR32, RR31, RR30, RR29, RR28, 
     X   RR27, RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, 
     X   RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8
       REAL RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3
     X   , LL2, LL1

       DO I=1,6,5
        LL9 = L1(I)
        LL10 = L1(I+1)
        LL11 = L1(I+2)
        LL12 = L1(I+3)
        LL13 = L1(I+4)
        L3(I) = .NOT.LL9
        L3(I+1) = .NOT.LL10
        L3(I+2) = .NOT.LL11
        L3(I+3) = .NOT.LL12
        L3(I+4) = .NOT.LL13
        L4(I) = L1(I)
        L4(I+1) = L1(I+1)
        L4(I+2) = L1(I+2)
        L4(I+3) = L1(I+3)
        L4(I+4) = L1(I+4)
        RR38 = 1.
        RR39 = 1.
        RR40 = 1.
        RR41 = 1.
        RR42 = 1.
        RR43 = RR38
        RR44 = RR39
        RR45 = RR40
        RR46 = RR41
        RR47 = RR42
        R3(I) = 1. + RR43
        R3(I+1) = 1. + RR44
        R3(I+2) = 1. + RR45
        R3(I+3) = 1. + RR46
        R3(I+4) = 1. + RR47
        R4(I) = I
        R4(I+1) = I + 1
        R4(I+2) = I + 2
        R4(I+3) = I + 3
        R4(I+4) = I + 4
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
        L2(I+4) = LL13
        L2(I+3) = LL12
        L2(I+2) = LL11
        L2(I+1) = LL10
        L2(I) = LL9
       END DO

       DO I1=1,10
        LL8 = L1(I1)
        DO I2=1,10
         LS2 = L2(I2)
         LL7 = LL8 .OR. L2(I2)
         DO I3=1,10
          LS3 = L3(I3)
          LL6 = LL7 .OR. L3(I3)
          DO I4=1,6,5
           LS4 = L4(I4+4)
           LL1 = LL6 .OR. .NOT.L4(I4)
           LL2 = LL6 .OR. .NOT.L4(I4+1)
           LL3 = LL6 .OR. .NOT.L4(I4+2)
           LL4 = LL6 .OR. .NOT.L4(I4+3)
           LL5 = LL6 .OR. .NOT.L4(I4+4)
           DO I5=1,6,5
            L5(I2,I3,I4,I5) = LL1
            L5(I2,I3,I4,I5+1) = LL1
            L5(I2,I3,I4,I5+2) = LL1
            L5(I2,I3,I4,I5+3) = LL1
            L5(I2,I3,I4,I5+4) = LL1
            L5(I2,I3,I4+1,I5) = LL2
            L5(I2,I3,I4+1,I5+1) = LL2
            L5(I2,I3,I4+1,I5+2) = LL2
            L5(I2,I3,I4+1,I5+3) = LL2
            L5(I2,I3,I4+1,I5+4) = LL2
            L5(I2,I3,I4+2,I5) = LL3
            L5(I2,I3,I4+2,I5+1) = LL3
            L5(I2,I3,I4+2,I5+2) = LL3
            L5(I2,I3,I4+2,I5+3) = LL3
            L5(I2,I3,I4+2,I5+4) = LL3
            L5(I2,I3,I4+3,I5) = LL4
            L5(I2,I3,I4+3,I5+1) = LL4
            L5(I2,I3,I4+3,I5+2) = LL4
            L5(I2,I3,I4+3,I5+3) = LL4
            L5(I2,I3,I4+3,I5+4) = LL4
            L5(I2,I3,I4+4,I5) = LL5
            L5(I2,I3,I4+4,I5+1) = LL5
            L5(I2,I3,I4+4,I5+2) = LL5
            L5(I2,I3,I4+4,I5+3) = LL5
            L5(I2,I3,I4+4,I5+4) = LL5
           END DO
           L4(I4) = .TRUE.
           L4(I4+1) = .TRUE.
           L4(I4+2) = .TRUE.
           L4(I4+3) = .TRUE.
           L4(I4+4) = .TRUE.
          END DO
          L3(I3) = .FALSE.
         END DO
         L2(I2) = .TRUE.
        END DO
       END DO

       DO I1=1,6,5
        LS1 = L1(I1+4)
        L1(I1) = .TRUE.
        L1(I1+1) = .TRUE.
        L1(I1+2) = .TRUE.
        L1(I1+3) = .TRUE.
        L1(I1+4) = .TRUE.
       END DO

       WRITE (6, *) '+++++ TEST NO. 1 +++++'
       WRITE (6, *) LS1, LS2, LS3, LS4
       WRITE (6, *) L1, L2, L3, L4, L5

       DO I1=1,10
        RR17 = R1(I1)
        DO I2=1,10
         RS2 = R2(I2)
         RR3 = RR17 + R2(I2)
         RR4 = RR17 + R2(I2)
         RR5 = RR17 + R2(I2)
         RR6 = RR17 + R2(I2)
         RR2 = RR17 + R2(I2)
         DO I3=1,10
          RS3 = R3(I3)
          RR11 = R3(I3)
          DO I4=1,6,5
           RS4 = R4(I4+4)
           RR12 = R4(I4)
           RR13 = R4(I4+1)
           RR14 = R4(I4+2)
           RR15 = R4(I4+3)
           RR16 = R4(I4+4)
           DO I5=1,6,5
            RR18 = RR3 + RR11
            RR19 = RR3 + RR11
            RR20 = RR3 + RR11
            RR21 = RR3 + RR11
            RR7 = RR3 + RR11
            RR22 = RR4 + RR11
            RR23 = RR4 + RR11
            RR24 = RR4 + RR11
            RR25 = RR4 + RR11
            RR8 = RR4 + RR11
            RR26 = RR5 + RR11
            RR27 = RR5 + RR11
            RR28 = RR5 + RR11
            RR29 = RR5 + RR11
            RR9 = RR5 + RR11
            RR30 = RR6 + RR11
            RR31 = RR6 + RR11
            RR32 = RR6 + RR11
            RR33 = RR6 + RR11
            RR10 = RR6 + RR11
            RR34 = RR2 + RR11
            RR35 = RR2 + RR11
            RR36 = RR2 + RR11
            RR37 = RR2 + RR11
            RR1 = RR2 + RR11
            R5(I2,I3,I4,I5) = RR18 - RR12
            R5(I2,I3,I4,I5+1) = RR19 - RR12
            R5(I2,I3,I4,I5+2) = RR20 - RR12
            R5(I2,I3,I4,I5+3) = RR21 - RR12
            R5(I2,I3,I4,I5+4) = RR7 - RR12
            R5(I2,I3,I4+1,I5) = RR22 - RR13
            R5(I2,I3,I4+1,I5+1) = RR23 - RR13
            R5(I2,I3,I4+1,I5+2) = RR24 - RR13
            R5(I2,I3,I4+1,I5+3) = RR25 - RR13
            R5(I2,I3,I4+1,I5+4) = RR8 - RR13
            R5(I2,I3,I4+2,I5) = RR26 - RR14
            R5(I2,I3,I4+2,I5+1) = RR27 - RR14
            R5(I2,I3,I4+2,I5+2) = RR28 - RR14
            R5(I2,I3,I4+2,I5+3) = RR29 - RR14
            R5(I2,I3,I4+2,I5+4) = RR9 - RR14
            R5(I2,I3,I4+3,I5) = RR30 - RR15
            R5(I2,I3,I4+3,I5+1) = RR31 - RR15
            R5(I2,I3,I4+3,I5+2) = RR32 - RR15
            R5(I2,I3,I4+3,I5+3) = RR33 - RR15
            R5(I2,I3,I4+3,I5+4) = RR10 - RR15
            R5(I2,I3,I4+4,I5) = RR34 - RR16
            R5(I2,I3,I4+4,I5+1) = RR35 - RR16
            R5(I2,I3,I4+4,I5+2) = RR36 - RR16
            R5(I2,I3,I4+4,I5+3) = RR37 - RR16
            R5(I2,I3,I4+4,I5+4) = RR1 - RR16
           END DO
           R4(I4) = 1.
           R4(I4+1) = 1.
           R4(I4+2) = 1.
           R4(I4+3) = 1.
           R4(I4+4) = 1.
          END DO
          R3(I3) = 2.
         END DO
         R2(I2) = 2.
        END DO
       END DO

       DO I1=1,6,5
        RS1 = R1(I1+4)
        R1(I1) = 0.
        R1(I1+1) = 0.
        R1(I1+2) = 0.
        R1(I1+3) = 0.
        R1(I1+4) = 0.
       END DO

       WRITE (6, *) '+++++ TEST NO. 2 +++++'
       WRITE (6, *) RS1, RS2, RS3, RS4
       WRITE (6, *) R1, R2, R3, R4, R5


       STOP 
      END
