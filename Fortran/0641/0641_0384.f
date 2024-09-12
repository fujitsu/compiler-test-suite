      PROGRAM MAIN
       REAL*4 R4S1, R4S2, R4S3(20), R4A1(20), R4A2(20)
       LOGICAL*4 L4S1, L4S2, L4S3(20), L4A1(20), L4A2(20)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.,16.,
     X   17.,18.,19.,20./ 
       DATA R4A2/1.,2.,1.,2.,1.,2.,1.,2.,1.,1.,2.,2.,2.,2.,2.,2.,2.,2.,
     X   2.,2./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./ 
       REAL RR19, RR18, RR17, RR16, RR15, RR14, RR13, RR12, RR11, RR10, 
     X   RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL36, LL35, LL34, LL33, LL32, LL31, LL30, LL29, LL28, 
     X   LL27, LL26, LL25, LL24, LL23, LL22, LL21, LL20, LL19, LL18, 
     X   LL17, LL16, LL15, LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, 
     X   LL6, LL5, LL4, LL3, LL2, LL1

                                                     
       DO I=1,11,5
        R4S1 = R4A1(I+4) + R4A2(I+4)
        RR3 = R4A1(I) + R4A2(I)
        RR4 = R4A1(I+1) + R4A2(I+1)
        RR5 = R4A1(I+2) + R4A2(I+2)
        RR6 = R4A1(I+3) + R4A2(I+3)
        RR7 = R4A1(I+4) + R4A2(I+4)
        LL1 = L4A1(I)
        LL2 = L4A1(I+1)
        LL3 = L4A1(I+2)
        LL4 = L4A1(I+3)
        L4S1 = L4A1(I+4)
        LL16 = .NOT.LL1
        LL17 = .NOT.LL2
        LL18 = .NOT.LL3
        LL19 = .NOT.LL4
        LL20 = .NOT.L4S1
        LL11 = LL16 .AND. LL1
        LL12 = LL17 .AND. LL2
        LL13 = LL18 .AND. LL3
        LL14 = LL19 .AND. LL4
        LL15 = LL20 .AND. L4S1
        L4A1(I+4) = LL15
        L4A1(I+3) = LL14
        L4A1(I+2) = LL13
        L4A1(I+1) = LL12
        L4A1(I) = LL11
        L4A2(I+4) = LL20
        L4A2(I+3) = LL19
        L4A2(I+2) = LL18
        L4A2(I+1) = LL17
        L4A2(I) = LL16
        R4A2(I+4) = RR7
        R4A2(I+3) = RR6
        R4A2(I+2) = RR5
        R4A2(I+1) = RR4
        R4A2(I) = RR3
       END DO
       R4S2 = 1. + R4A2(15)
       L4S2 = L4A2(15) .AND. L4S1

                                                     
       DO I=1,11,5
        RR1 = 1. + R4A2(I)
        RR1 = 1. + R4A2(I+1)
        RR1 = 1. + R4A2(I+2)
        RR1 = 1. + R4A2(I+3)
        RR1 = 1. + R4A2(I+4)
       END DO
       R4A1(1) = RR1

       WRITE (6, *) '** TEST NO. 1 - 1 **'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, L4S1, L4S2, L4A1, L4A2

                                                     
       DO I=1,13,4
        R4S1 = R4A1(I+3) + R4A2(I+3)
        RR8 = R4A1(I) + R4A2(I)
        RR9 = R4A1(I+1) + R4A2(I+1)
        RR10 = R4A1(I+2) + R4A2(I+2)
        RR11 = R4A1(I+3) + R4A2(I+3)
        LL5 = L4A1(I)
        LL6 = L4A1(I+1)
        LL7 = L4A1(I+2)
        L4S1 = L4A1(I+3)
        LL25 = .NOT.LL5
        LL26 = .NOT.LL6
        LL27 = .NOT.LL7
        LL28 = .NOT.L4S1
        LL21 = LL25 .AND. LL5
        LL22 = LL26 .AND. LL6
        LL23 = LL27 .AND. LL7
        LL24 = LL28 .AND. L4S1
        L4A1(I+3) = LL24
        L4A1(I+2) = LL23
        L4A1(I+1) = LL22
        L4A1(I) = LL21
        L4A2(I+3) = LL28
        L4A2(I+2) = LL27
        L4A2(I+1) = LL26
        L4A2(I) = LL25
        R4A2(I+3) = RR11
        R4A2(I+2) = RR10
        R4A2(I+1) = RR9
        R4A2(I) = RR8
       END DO
       R4S2 = 1. + R4A2(16)
       L4S2 = L4A2(16) .AND. L4S1

                                                     
       DO I=1,13,4
        RR2 = 1. + R4A2(I)
        RR2 = 1. + R4A2(I+1)
        RR2 = 1. + R4A2(I+2)
        RR2 = 1. + R4A2(I+3)
       END DO
       R4A1(1) = RR2

       WRITE (6, *) '** TEST NO. 1 -2 **'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, L4S1, L4S2, L4A1, L4A2

                                                     
       DO I=1,14,4
        RR13 = R4A1(I) + R4A2(I)
        RR15 = R4A1(I+1) + R4A2(I+1)
        RR17 = R4A1(I+2) + R4A2(I+2)
        RR19 = R4A1(I+3) + R4A2(I+3)
        RR12 = 1. + RR13
        RR14 = 1. + RR15
        RR16 = 1. + RR17
        RR18 = 1. + RR19
        LL8 = L4A1(I)
        LL9 = L4A1(I+1)
        LL10 = L4A1(I+2)
        L4S1 = L4A1(I+3)
        LL33 = .NOT.LL8
        LL34 = .NOT.LL9
        LL35 = .NOT.LL10
        LL36 = .NOT.L4S1
        LL29 = LL33 .AND. LL8
        LL30 = LL34 .AND. LL9
        LL31 = LL35 .AND. LL10
        LL32 = LL36 .AND. L4S1
        L4A1(I+3) = LL32
        L4A1(I+2) = LL31
        L4A1(I+1) = LL30
        L4A1(I) = LL29
        L4A2(I+3) = LL36
        L4A2(I+2) = LL35
        L4A2(I+1) = LL34
        L4A2(I) = LL33
        R4A1(I+3) = RR18
        R4A1(I+2) = RR16
        R4A1(I+1) = RR14
        R4A1(I) = RR12
        R4A2(I+3) = RR19
        R4A2(I+2) = RR17
        R4A2(I+1) = RR15
        R4A2(I) = RR13
       END DO
       R4S1 = R4A1(17) + R4A2(17)
       R4A2(17) = R4A1(17) + R4A2(17)
       R4A1(17) = 1. + R4A2(17)
       L4S1 = L4A1(17)
       L4A2(17) = .NOT.L4S1
       L4A1(17) = L4A2(17) .AND. L4S1
       R4S2 = 1. + R4A2(17)
       L4S2 = L4A2(17) .AND. L4S1

       WRITE (6, *) '** TEST NO. 1 - 3 **'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, L4S1, L4S2, L4A1, L4A2


                                                     
       DO I=1,15
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         R4A2(I) = R4A1(I) + R4A2(I)
         R4S2 = 1. + R4A2(I)
         R4A1(1) = 1. + R4A2(I)
         L4S1 = L4A1(I)
         L4A2(I) = .NOT.L4S1
         L4S2 = L4A2(I) .AND. L4S1
         L4A1(I) = L4A2(I) .AND. L4S1
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 - 1 **'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, L4S1, L4S2, L4A1, L4A2

                                                     
       DO I=1,16
        IF (L4A2(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         R4A2(I) = R4A1(I) + R4A2(I)
         R4S2 = 1. + R4A2(I)
         R4A1(I) = 1. + R4A2(I)
         L4S1 = L4A1(I)
         L4A2(I) = .NOT.L4S1
         L4S2 = L4A2(I) .AND. L4S1
         L4A1(I) = L4A2(I) .AND. L4S1
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 2 -2 **'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, L4S1, L4S2, L4A1, L4A2

                                                     
       DO I=1,17
        IF (L4A1(I)) THEN
         R4S1 = R4A1(I) + R4A2(I)
         R4A2(I) = R4A1(I) + R4A2(I)
         R4S2 = 1. + R4A2(I)
         R4A1(I) = 1. + R4A2(I)
         L4S1 = L4A1(I)
         L4A2(I) = .NOT.L4S1
         L4S2 = L4A2(I) .AND. L4S1
         L4A1(I) = L4A2(I) .AND. L4S1
        END IF
       END DO

       WRITE (6, *) '** TEST NO. 3 - 3 **'
       WRITE (6, *) R4S1, R4S2, R4A1, R4A2, L4S1, L4S2, L4A1, L4A2

       STOP 
      END
