      PROGRAM MAIN
       REAL*4 RV01(-9:10)
       INTEGER*4 LV01(10)
       COMMON // RV01, LV01
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2.)

       CALL INIT (1)

                                                      
       DO I=1,10
        IF (I .NE. 5) RV01(LV01(I)) = (10. + FLOAT (I) * RR1) ** 3.
       END DO

       CALL INIT (2)

                                                      
       DO I=1,10
        IF (0 .LT. LV01(I) .AND. LV01(I) .LE. 10) RV01(LV01(I)) = SQRT (
     X    I / 4. * I) * 3 + I * (12 - I)
       END DO

       CALL INIT (3)

                                                       
       DO I=1,10
        IF (LV01(I) .LT. 11) RV01(LV01(I)) = RV01(I*2) * RR2 * 3 - I
       END DO

       CALL INIT (4)

                                                       
       DO I=1,10
        RS = I * 3.
        IF (I .NE. 10) THEN
         RV01(LV01(I)+1) = 1 + RV01(LV01(I)+1) * 2 + RS + I
        ELSE
         RV01(LV01(I)-9) = RV01(LV01(I)-9) * (-2) - RS
        END IF
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
