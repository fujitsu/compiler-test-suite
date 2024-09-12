      PROGRAM MAIN
       REAL*4 R4S1(10), R4A1(10), R4A2(10)
       LOGICAL*4 L4S1(10), L4A1(10), L4A2(10)
       DATA R4A1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./ 
       DATA R4A2/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./ 
       DATA L4A1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L4A2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA R4S1/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./ 
       DATA L4S1/10*.TRUE./ 
       REAL RR46, RR45, RR44, RR43, RR42, RR41, RR40, RR39, RR38, RR37, 
     X   RR36, RR35, RR34, RR33, RR32, RR31, RR30, RR29, RR28, RR27, 
     X   RR26, RR25, RR24, RR23, RR22, RR21, RR20, RR19, RR18, RR17, 
     X   RR16, RR15, RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7
       REAL RR6, RR5, RR4, RR3, RR2, RR1
       LOGICAL LL61, LL60, LL59, LL58, LL57, LL56, LL55, LL54, LL53, 
     X   LL52, LL51, LL50, LL49, LL48, LL47, LL46, LL45, LL44, LL43, 
     X   LL42, LL41, LL40, LL39, LL38, LL37, LL36, LL35, LL34, LL33, 
     X   LL32, LL31, LL30, LL29, LL28, LL27, LL26, LL25, LL24, LL23, 
     X   LL22
       LOGICAL LL21, LL20, LL19, LL18, LL17, LL16, LL15, LL14, LL13, 
     X   LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3, LL2, LL1

       DO I=1,6,5
        RR1 = I
        LL1 = .TRUE.
        LL2 = .FALSE.
        LL3 = .TRUE.
        LL1 = .FALSE.
        LL2 = L4A1(I) .AND. L4A2(I)
        LL4 = .NOT.LL2
        LL5 = FLOAT (I) .EQ. R4A1(I)
        RR1 = I + 1
        LL1 = .TRUE.
        LL2 = .FALSE.
        LL3 = .TRUE.
        LL1 = .FALSE.
        LL2 = L4A1(I+1) .AND. L4A2(I+1)
        LL4 = .NOT.LL2
        LL5 = FLOAT (I + 1) .EQ. R4A1(I+1)
        RR1 = I + 2
        LL1 = .TRUE.
        LL2 = .FALSE.
        LL3 = .TRUE.
        LL1 = .FALSE.
        LL2 = L4A1(I+2) .AND. L4A2(I+2)
        LL4 = .NOT.LL2
        LL5 = FLOAT (I + 2) .EQ. R4A1(I+2)
        RR1 = I + 3
        LL1 = .TRUE.
        LL2 = .FALSE.
        LL3 = .TRUE.
        LL1 = .FALSE.
        LL2 = L4A1(I+3) .AND. L4A2(I+3)
        LL4 = .NOT.LL2
        LL5 = FLOAT (I + 3) .EQ. R4A1(I+3)
        RR1 = I + 4
        LL1 = .TRUE.
        LL2 = .FALSE.
        LL3 = .TRUE.
        LL1 = .FALSE.
        LL2 = L4A1(I+4) .AND. L4A2(I+4)
        LL4 = .NOT.LL2
        LL5 = FLOAT (I + 4) .EQ. R4A1(I+4)
       END DO
       R4S1(1) = RR1
       L4S1(2) = LL1
       L4S1(3) = LL2
       L4S1(1) = LL3
       L4S1(4) = LL4
       L4S1(5) = LL5
       WRITE (6, *) '** TEST NO. 1 ***'
       WRITE (6, *) R4S1
       WRITE (6, *) L4S1
       RR2 = R4S1(1)
       RR3 = R4S1(2)
       LL6 = L4S1(1)
       LL7 = L4S1(2)
       LL9 = L4S1(4)

       DO I=1,6,5
        R4A1(I) = RR2
        RR32 = RR3
        RR2 = RR32
        R4A1(I) = RR2
        LL37 = LL6
        LL38 = LL7
        LL8 = LL37 .AND. LL38
        L4A1(I) = LL9
        R4A1(I+1) = RR2
        RR33 = RR3
        RR2 = RR33
        R4A1(I+1) = RR2
        LL39 = LL6
        LL40 = LL7
        LL8 = LL39 .AND. LL40
        L4A1(I+1) = LL9
        R4A1(I+2) = RR2
        RR34 = RR3
        RR2 = RR34
        R4A1(I+2) = RR2
        LL41 = LL6
        LL42 = LL7
        LL8 = LL41 .AND. LL42
        L4A1(I+2) = LL9
        R4A1(I+3) = RR2
        RR35 = RR3
        RR2 = RR35
        R4A1(I+3) = RR2
        LL43 = LL6
        LL44 = LL7
        LL8 = LL43 .AND. LL44
        L4A1(I+3) = LL9
        R4A1(I+4) = RR2
        RR36 = RR3
        RR2 = RR36
        R4A1(I+4) = RR2
        LL45 = LL6
        LL46 = LL7
        LL8 = LL45 .AND. LL46
        L4A1(I+4) = LL9
        L4A2(I+4) = LL46
        R4A2(I+4) = RR36
        L4A2(I+3) = LL44
        R4A2(I+3) = RR35
        L4A2(I+2) = LL42
        R4A2(I+2) = RR34
        L4A2(I+1) = LL40
        R4A2(I+1) = RR33
        L4A2(I) = LL38
        R4A2(I) = RR32
       END DO
       R4S1(1) = RR2
       L4S1(3) = LL8

       WRITE (6, *) '** TEST NO. 2 **'
       WRITE (6, *) R4A1, R4A2, R4S1
       WRITE (6, *) L4A1, L4A2, L4S1
       RR5 = R4S1(2)
       LL10 = L4S1(1)
       LL12 = L4S1(2)

       DO I=1,6,5
        RR4 = 1. + R4A1(I) + R4A2(I)
        RR37 = 1. + RR5
        RR6 = RR37 + R4A2(I)
        LL47 = .NOT.LL10
        LL11 = LL47 .OR. L4A2(I)
        LL48 = LL10 .AND. LL12
        LL13 = .NOT.LL48
        RR4 = 1. + R4A1(I+1) + R4A2(I+1)
        RR38 = 1. + RR5
        RR6 = RR38 + R4A2(I+1)
        LL49 = .NOT.LL10
        LL11 = LL49 .OR. L4A2(I+1)
        LL50 = LL10 .AND. LL12
        LL13 = .NOT.LL50
        RR4 = 1. + R4A1(I+2) + R4A2(I+2)
        RR39 = 1. + RR5
        RR6 = RR39 + R4A2(I+2)
        LL51 = .NOT.LL10
        LL11 = LL51 .OR. L4A2(I+2)
        LL52 = LL10 .AND. LL12
        LL13 = .NOT.LL52
        RR4 = 1. + R4A1(I+3) + R4A2(I+3)
        RR40 = 1. + RR5
        RR6 = RR40 + R4A2(I+3)
        LL53 = .NOT.LL10
        LL11 = LL53 .OR. L4A2(I+3)
        LL54 = LL10 .AND. LL12
        LL13 = .NOT.LL54
        RR4 = 1. + R4A1(I+4) + R4A2(I+4)
        RR41 = 1. + RR5
        RR6 = RR41 + R4A2(I+4)
        LL55 = .NOT.LL10
        LL11 = LL55 .OR. L4A2(I+4)
        LL56 = LL10 .AND. LL12
        LL13 = .NOT.LL56
        L4A2(I+4) = LL56
        L4A1(I+4) = LL55
        R4A1(I+4) = RR41
        L4A2(I+3) = LL54
        L4A1(I+3) = LL53
        R4A1(I+3) = RR40
        L4A2(I+2) = LL52
        L4A1(I+2) = LL51
        R4A1(I+2) = RR39
        L4A2(I+1) = LL50
        L4A1(I+1) = LL49
        R4A1(I+1) = RR38
        L4A2(I) = LL48
        L4A1(I) = LL47
        R4A1(I) = RR37
       END DO
       R4S1(1) = RR4
       R4S1(3) = RR6
       L4S1(4) = LL11
       L4S1(5) = LL13

       WRITE (6, *) '** TEST NO. 3 **'
       WRITE (6, *) R4S1, R4A1
       WRITE (6, *) L4A1, L4S1
       RR7 = R4S1(1)
       RR9 = R4S1(3)
       LL14 = L4S1(1)
       LL16 = L4S1(6)
       LL18 = L4S1(2)

       DO I=1,6,5
        R4A1(I) = RR7
        RR8 = R4A2(I)
        RR42 = RR9 + R4A2(I)
        LL57 = LL14
        LL15 = .NOT.LL57
        LL17 = LL16 .AND. L4A2(I)
        LL57 = LL14 .AND. LL18
        R4A1(I+1) = RR7
        RR8 = R4A2(I+1)
        RR43 = RR9 + R4A2(I+1)
        LL58 = LL14
        LL15 = .NOT.LL58
        LL17 = LL16 .AND. L4A2(I+1)
        LL58 = LL14 .AND. LL18
        R4A1(I+2) = RR7
        RR8 = R4A2(I+2)
        RR44 = RR9 + R4A2(I+2)
        LL59 = LL14
        LL15 = .NOT.LL59
        LL17 = LL16 .AND. L4A2(I+2)
        LL59 = LL14 .AND. LL18
        R4A1(I+3) = RR7
        RR8 = R4A2(I+3)
        RR45 = RR9 + R4A2(I+3)
        LL60 = LL14
        LL15 = .NOT.LL60
        LL17 = LL16 .AND. L4A2(I+3)
        LL60 = LL14 .AND. LL18
        R4A1(I+4) = RR7
        RR8 = R4A2(I+4)
        RR46 = RR9 + R4A2(I+4)
        LL61 = LL14
        LL15 = .NOT.LL61
        LL17 = LL16 .AND. L4A2(I+4)
        LL61 = LL14 .AND. LL18
        L4A1(I+4) = LL61
        R4A1(I+4) = RR46
        L4A1(I+3) = LL60
        R4A1(I+3) = RR45
        L4A1(I+2) = LL59
        R4A1(I+2) = RR44
        L4A1(I+1) = LL58
        R4A1(I+1) = RR43
        L4A1(I) = LL57
        R4A1(I) = RR42
       END DO
       R4S1(2) = RR8
       L4S1(4) = LL15
       L4S1(5) = LL17

       WRITE (6, *) '** TEST NO. 4 **'
       WRITE (6, *) R4A1, R4S1, L4A1, L4S1
       LL21 = L4S1(6)
       LL22 = L4S1(5)

       DO I=1,10
        RR14 = FLOAT (I)
        DO J=1,6,5
         RR10 = R4A1(J)
         RR11 = I
         RR12 = J
         RR13 = RR11 + RR12
         LL19 = RR14 .EQ. R4A1(J)
         LL20 = FLOAT (J) .EQ. R4A1(J)
         LL23 = LL22 .AND. LL21
         LL24 = L4A1(J) .AND. LL19
         RR10 = R4A1(J+1)
         RR11 = I
         RR12 = J + 1
         RR13 = RR11 + RR12
         LL19 = RR14 .EQ. R4A1(J+1)
         LL20 = FLOAT (J + 1) .EQ. R4A1(J+1)
         LL23 = LL22 .AND. LL21
         LL24 = L4A1(J+1) .AND. LL19
         RR10 = R4A1(J+2)
         RR11 = I
         RR12 = J + 2
         RR13 = RR11 + RR12
         LL19 = RR14 .EQ. R4A1(J+2)
         LL20 = FLOAT (J + 2) .EQ. R4A1(J+2)
         LL23 = LL22 .AND. LL21
         LL24 = L4A1(J+2) .AND. LL19
         RR10 = R4A1(J+3)
         RR11 = I
         RR12 = J + 3
         RR13 = RR11 + RR12
         LL19 = RR14 .EQ. R4A1(J+3)
         LL20 = FLOAT (J + 3) .EQ. R4A1(J+3)
         LL23 = LL22 .AND. LL21
         LL24 = L4A1(J+3) .AND. LL19
         RR10 = R4A1(J+4)
         RR11 = I
         RR12 = J + 4
         RR13 = RR11 + RR12
         LL19 = RR14 .EQ. R4A1(J+4)
         LL20 = FLOAT (J + 4) .EQ. R4A1(J+4)
         LL23 = LL22 .AND. LL21
         LL24 = L4A1(J+4) .AND. LL19
        END DO
       END DO
       L4S1(4) = LL24
       L4S1(3) = LL23
       L4S1(2) = LL20
       L4S1(1) = LL19
       R4S1(4) = RR13
       R4S1(3) = RR12
       R4S1(2) = RR11
       R4S1(1) = RR10

       WRITE (6, *) '** TEST NO. 5 **'
       WRITE (6, *) R4S1, L4S1

       DO I=1,10
        RR16 = R4A1(I)
        RR17 = I
        LL28 = L4A1(I)
        LL29 = FLOAT (I) .EQ. R4A1(I)
        LL25 = LL28
        DO J=1,6,5
         RR15 = R4A1(J) * 2.
         LL26 = LL25 .AND. L4A1(J)
         LL27 = LL25 .OR. L4A1(J)
         RR15 = R4A1(J+1) * 2.
         LL26 = LL25 .AND. L4A1(J+1)
         LL27 = LL25 .OR. L4A1(J+1)
         RR15 = R4A1(J+2) * 2.
         LL26 = LL25 .AND. L4A1(J+2)
         LL27 = LL25 .OR. L4A1(J+2)
         RR15 = R4A1(J+3) * 2.
         LL26 = LL25 .AND. L4A1(J+3)
         LL27 = LL25 .OR. L4A1(J+3)
         RR15 = R4A1(J+4) * 2.
         LL26 = LL25 .AND. L4A1(J+4)
         LL27 = LL25 .OR. L4A1(J+4)
        END DO
       END DO
       L4S1(4) = LL27
       L4S1(3) = LL26
       R4S1(3) = RR15
       R4S1(1) = RR16
       R4S1(2) = RR17
       L4S1(1) = LL28
       L4S1(2) = LL29

       WRITE (6, *) '** TEST NO. 6 **'
       WRITE (6, *) R4S1, L4S1
       RR20 = R4S1(1)
       LL35 = L4S1(1)
       LL36 = L4S1(2)

       DO I=1,10
        R4A1(I) = RR20
        L4A1(I) = LL35
        L4A2(I) = LL35 .AND. LL36
        RR19 = R4A1(I)
        LL33 = L4A1(I)
        LL32 = .NOT.L4A2(I)
        DO J=1,6,5
         RR18 = R4A1(J)
         LL30 = L4A1(J)
         LL31 = FLOAT (J) .EQ. RR19
         LL34 = LL33 .AND. L4A2(J)
         RR18 = R4A1(J+1)
         LL30 = L4A1(J+1)
         LL31 = FLOAT (J + 1) .EQ. RR19
         LL34 = LL33 .AND. L4A2(J+1)
         RR18 = R4A1(J+2)
         LL30 = L4A1(J+2)
         LL31 = FLOAT (J + 2) .EQ. RR19
         LL34 = LL33 .AND. L4A2(J+2)
         RR18 = R4A1(J+3)
         LL30 = L4A1(J+3)
         LL31 = FLOAT (J + 3) .EQ. RR19
         LL34 = LL33 .AND. L4A2(J+3)
         RR18 = R4A1(J+4)
         LL30 = L4A1(J+4)
         LL31 = FLOAT (J + 4) .EQ. RR19
         LL34 = LL33 .AND. L4A2(J+4)
        END DO
       END DO
       L4S1(6) = LL34
       L4S1(5) = LL32
       L4S1(4) = LL31
       L4S1(3) = LL30
       R4S1(3) = RR18

       WRITE (6, *) '** TEST NO. 7 **'
       WRITE (6, *) R4A1, L4A1, L4A2, R4S1, L4S1

       DO I=1,10
        DO K=1,6,5
         RR21 = R4A1(K) + R4A2(K)
         RR21 = R4A1(K+1) + R4A2(K+1)
         RR21 = R4A1(K+2) + R4A2(K+2)
         RR21 = R4A1(K+3) + R4A2(K+3)
         RR21 = R4A1(K+4) + R4A2(K+4)
        END DO
        RR22 = RR21
       END DO
       R4S1(1) = RR22

       WRITE (6, *) '**TEST NO. 8 **'
       WRITE (6, *) R4S1

       DO I=1,10
        DO J=1,6,5
         RR23 = 1. + R4A1(J)
         RR23 = 1. + R4A1(J+1)
         RR23 = 1. + R4A1(J+2)
         RR23 = 1. + R4A1(J+3)
         RR23 = 1. + R4A1(J+4)
        END DO
        RR25 = RR23
        RR24 = RR25
        DO K=1,6,5
         R4A1(K) = RR24
         R4A1(K+1) = RR24
         R4A1(K+2) = RR24
         R4A1(K+3) = RR24
         R4A1(K+4) = RR24
        END DO
       END DO
       R4S1(1) = RR25

       WRITE (6, *) '** TEST NO. 9 **'
       WRITE (6, *) R4S1, R4A1

       DO I=1,10
        DO J=1,10
         DO K=1,6,5
          RR26 = R4A1(K)
          RR26 = R4A1(K+1)
          RR26 = R4A1(K+2)
          RR26 = R4A1(K+3)
          RR26 = R4A1(K+4)
         END DO
         RR27 = RR26
        END DO
        RR28 = RR27
       END DO
       R4S1(1) = RR28

       WRITE (6, *) '** TEST NO. 10 **'
       WRITE (6, *) R4S1

       DO I=1,10
        RR31 = R4A1(I)
        RR30 = RR31
        DO J=1,10
         R4A1(J) = RR30
         DO K=1,6,5
          RR29 = R4A1(K)
          RR29 = R4A1(K+1)
          RR29 = R4A1(K+2)
          RR29 = R4A1(K+3)
          RR29 = R4A1(K+4)
         END DO
         RR30 = RR29
        END DO
        RR31 = RR30
       END DO
       R4S1(1) = RR31

       WRITE (6, *) '** TEST NO. 11 **'
       WRITE (6, *) R4S1, R4A1


       STOP 
      END
