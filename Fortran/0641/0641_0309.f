      PROGRAM MAIN

       REAL*4 RV01(-9:10), RV02(10)
       REAL*8 QS01
       INTEGER*4 LV01(10)
       COMMON // RV01, LV01
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)
       REAL RR7, RR6, RR5, RR4, RR3
       QS01 = 5.5

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

                                                      
       DO I=1,10
        IF (I .NE. 5) THEN
         RV01(LV01(I)) = (10. + RV02(I) * RR1) ** 3.
        END IF
       END DO

       CALL INIT (2)
       WRITE (6, *) RV02

       DO I=1,10
        IF (0 .LT. LV01(I) .AND. LV01(I) .LE. 10) RV01(LV01(I)) = SQRT (
     X    I / 4. * I) * 3 + QS01
       END DO

       CALL INIT (3)

       DO I=1,10
        IF (LV01(I) .LT. 11) RV01(LV01(I)) = LV01(I) * RR2 * 3
       END DO

       CALL INIT (4)

                                                       
       DO I=1,10
        RS = I * 3.
        QS01 = RS
        IF (I .NE. 10) RV01(LV01(I)+1) = RV01(LV01(I)+1) * QS01
        QS01 = QS01 - 1
        IF (I .EQ. 10) RV01(LV01(I)-9) = QS01 - RS - RV01(LV01(I)-9)
       END DO

       CALL INIT (5)

       STOP 
      END

      SUBROUTINE INIT ( N )
       COMMON // RV01, LV01
       EQUIVALENCE (RV01(1), LV02), (LV02(11), LV01)
       INTEGER*4 LV01(10), LV02(11)
       REAL*4 RV01(-9:10)

       IF (N .NE. 1) THEN
        WRITE (6, *) 'RV01= ', RV01
        WRITE (6, *) 'LV01= ', LV01
       ELSE

        DO I=1,6,5
         LV01(I) = 11 - I
         LV01(I+1) = 10 - I
         LV01(I+2) = 9 - I
         LV01(I+3) = 8 - I
         LV01(I+4) = 7 - I
         RV01(I-10) = 0.
         RV01(I-9) = 0.
         RV01(I-8) = 0.
         RV01(I-7) = 0.
         RV01(I-6) = 0.
         RV01(I) = 0.
         RV01(I+1) = 0.
         RV01(I+2) = 0.
         RV01(I+3) = 0.
         RV01(I+4) = 0.
        END DO
        LV02(6) = 16
       END IF

       IF (N .EQ. 2) THEN
        DO I=1,6,5
         LV01(I) = I * 2 - 4
         LV01(I+1) = I * 2 - 2
         LV01(I+2) = I * 2
         LV01(I+3) = I * 2 + 2
         LV01(I+4) = I * 2 + 4
         RV01(I) = 0.
         RV01(I+1) = 0.
         RV01(I+2) = 0.
         RV01(I+3) = 0.
         RV01(I+4) = 0.
        END DO
       END IF

       IF (N .EQ. 3) THEN
        DO I=1,6,5
         LV01(I) = I * 2
         LV01(I+1) = I * 2 + 2
         LV01(I+2) = I * 2 + 4
         LV01(I+3) = I * 2 + 6
         LV01(I+4) = I * 2 + 8
         RV01(I) = I - 3
         RV01(I+1) = I - 2
         RV01(I+2) = I - 1
         RV01(I+3) = I
         RV01(I+4) = I + 1
        END DO
       END IF

       IF (N .EQ. 4) THEN
        DO I=1,6,5
         LV01(I) = I
         LV01(I+1) = I + 1
         LV01(I+2) = I + 2
         LV01(I+3) = I + 3
         LV01(I+4) = I + 4
         RV01(I) = I
         RV01(I+1) = I + 1
         RV01(I+2) = I + 2
         RV01(I+3) = I + 3
         RV01(I+4) = I + 4
        END DO
       END IF

       RETURN 
      END
 
 
 
 
 
 
 
