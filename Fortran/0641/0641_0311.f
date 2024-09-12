      PROGRAM MAIN

       REAL*4 RV01(-9:10), RV02(10), RV03(10)
       INTEGER*4 IV01(10), IV02(10), IRC1, ICODE
       LOGICAL*4 LV01(10)
       COMMON // RV01, RV02, LV01, IV01, IV02, RV03, IRC1, ICODE
       DOUBLEPRECISION QS01
       PARAMETER (QS01 = 5.5)
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 4., RR2 = 1. / 4.)
       REAL RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3
       LOGICAL LL3, LL2, LL1

       CALL INIT (1)

       DO I=1,6,5
        RR3 = I
        RR4 = I + 1
        RR5 = I + 2
        RR6 = I + 3
        RR7 = I + 4
        RR3 = I + RR3
        RR4 = 1 + I + RR4
        RR5 = 2 + I + RR5
        RR6 = 3 + I + RR6
        RR7 = 4 + I + RR7
        RV02(I+4) = RR7
        RV02(I+3) = RR6
        RV02(I+2) = RR5
        RV02(I+1) = RR4
        RV02(I) = RR3
       END DO

       LL1 = IRC1 .EQ. 5
       LL2 = IRC1 .NE. 5
       DO I=1,10
        IF (LL1) THEN
         RV01(I-3) = RV02(I) * RV02(I)
         LV01(I) = RV01(I) .GT. RV01(I-3)
         IF (LV01(I)) THEN
          GO TO 5
         END IF
         RV01(I) = RV01(I) * RR1
         ICODE = I * 100 + 1
         RV02(I) = QS01 - RV01(I) + RV01(I) * 3.5
         IV02(I) = 4 + RV01(I) * 2
        ELSE
         ICODE = I * 100 + 4
        END IF
        IF (0 .LT. IV02(I) .AND. IV02(I) .LE. 10) THEN
         RV03(IV02(I)) = SQRT (I / 4. * I) * 3 + QS01
        END IF
        IF (LL2) THEN
         ICODE = I * 100 + 2
         GO TO 6
        END IF
    5   ICODE = I * 100 + 3
    6   IV01(I) = ICODE
       END DO
       CALL INIT (2)

       DO I=1,6,5
        RR8 = I
        RR9 = I + 1
        RR10 = I + 2
        RR11 = I + 3
        RR12 = I + 4
        RR8 = I + RR8
        RR9 = 1 + I + RR9
        RR10 = 2 + I + RR10
        RR11 = 3 + I + RR11
        RR12 = 4 + I + RR12
        RV02(I+4) = RR12
        RV02(I+3) = RR11
        RV02(I+2) = RR10
        RV02(I+1) = RR9
        RV02(I) = RR8
       END DO

       LL3 = IRC1 .NE. 5
       DO I=1,10
        IF (LL3) THEN
         RV01(I-3) = RV02(I) * RV02(I)
         LV01(I) = RV01(I) .GT. RV01(I-3)
         IF (LV01(I)) THEN
          GO TO 7
         END IF
         RV01(I) = RV01(I) * RR2
         ICODE = I * 100 + 1
         RV02(I) = QS01 - RV01(I) + RV01(I) * 3.5
         IV02(I) = 4 + RV01(I) * 2
        ELSE
         ICODE = I * 100 + 4
        END IF
        IF (0 .LT. IV02(I) .AND. IV02(I) .LE. 10) THEN
         RV03(IV02(I)) = SQRT (I / 4. * I) * 3 + QS01
        END IF
        IF (LL3) THEN
         ICODE = I * 100 + 2
         GO TO 8
        END IF
    7   ICODE = I * 100 + 3
    8   IV01(I) = ICODE
       END DO
       CALL INIT (3)

       STOP 
      END

      SUBROUTINE INIT ( N )
       REAL*4 RV01(-9:10), RV02(10), RV03(10)
       INTEGER*4 IV01(10), IV02(10), IRC1, ICODE, N
       LOGICAL*4 LV01(10)
       COMMON // RV01, RV02, LV01, IV01, IV02, RV03, IRC1, ICODE


       IF (N .NE. 1) THEN
        WRITE (6, *) 'RV01= ', RV01
        WRITE (6, *) 'RV02= ', RV02
        WRITE (6, *) 'LV01= ', LV01
        WRITE (6, *) 'IV01= ', IV01
        WRITE (6, *) 'IV02= ', IV02
       ELSE
        DO I=-9,-4,5
         RV01(I) = 3.
         RV01(I+1) = 3.
         RV01(I+2) = 3.
         RV01(I+3) = 3.
         RV01(I+4) = 3.
        END DO
       END IF

       DO I=1,6,5
        LV01(I) = .TRUE.
        LV01(I+1) = .TRUE.
        LV01(I+2) = .TRUE.
        LV01(I+3) = .TRUE.
        LV01(I+4) = .TRUE.
        RV01(I) = I + 12
        RV01(I+1) = I + 13
        RV01(I+2) = I + 14
        RV01(I+3) = I + 15
        RV01(I+4) = I + 16
        IV02(I) = I + 12
        IV02(I+1) = I + 13
        IV02(I+2) = I + 14
        IV02(I+3) = I + 15
        IV02(I+4) = I + 16
        IV01(I) = 0
        IV01(I+1) = 0
        IV01(I+2) = 0
        IV01(I+3) = 0
        IV01(I+4) = 0
       END DO
       ICODE = 0
       IRC1 = 5

       RETURN 
      END
