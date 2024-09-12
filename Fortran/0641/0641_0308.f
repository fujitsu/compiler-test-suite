      PROGRAM MAIN

       REAL*8 DV1(10)
       REAL*4 RV1(10), RV2(10)
       INTEGER*4 LST(10)

       COMMON // DV1, RV1, RV2, LV1, LST

       CALL INIT (1)
       CALL SUB1

       CALL INIT (2)
       CALL SUB2

       CALL INIT (3)
       CALL SUB3

       CALL INIT (4)
       CALL SUB4

       CALL INIT (5)

       STOP 
      END

      SUBROUTINE INIT ( N )
       REAL*8 DV1(10), DV2(10)
       REAL*4 RV1(10), RV2(10)
       LOGICAL*4 LV1(10)
       INTEGER*4 LST(10)

       COMMON // DV1, DV2, RV1, RV2, LV1, LST

       IF (N .NE. 1) THEN
        WRITE (6, *) 'DV1= ', DV1
        WRITE (6, *) 'DV2= ', DV2
        WRITE (6, *) 'RV1= ', RV1
        WRITE (6, *) 'RV2= ', RV2
        WRITE (6, *) 'LV1= ', LV1
       END IF

       DO I=1,6,5
        LST(I) = I
        LST(I+1) = I + 1
        LST(I+2) = I + 2
        LST(I+3) = I + 3
        LST(I+4) = I + 4
        LV1(I) = .FALSE.
        LV1(I+1) = .FALSE.
        LV1(I+2) = .FALSE.
        LV1(I+3) = .FALSE.
        LV1(I+4) = .FALSE.
        RV1(I) = I - 4
        RV1(I+1) = I - 3
        RV1(I+2) = I - 2
        RV1(I+3) = I - 1
        RV1(I+4) = I
        RV2(I) = 100.
        RV2(I+1) = 100.
        RV2(I+2) = 100.
        RV2(I+3) = 100.
        RV2(I+4) = 100.
        DV1(I) = 8 - I
        DV1(I+1) = 7 - I
        DV1(I+2) = 6 - I
        DV1(I+3) = 5 - I
        DV1(I+4) = 4 - I
        DV2(I) = 100D0
        DV2(I+1) = 100D0
        DV2(I+2) = 100D0
        DV2(I+3) = 100D0
        DV2(I+4) = 100D0
       END DO

       RETURN 
      END

      SUBROUTINE SUB1

       REAL*4 S
       REAL*8 DV1(10), DV2(10)
       REAL*4 RV1(10), RV2(10)
       LOGICAL*4 LV1(10), LS
       INTEGER*4 LST(10)

       COMMON // DV1, DV2, RV1, RV2, LV1, LST

                                                       
       DO I=1,10
        S = 0.
        LS = DV1(I) .GE. REAL (RV1(I), KIND = 8)
                                                                        
        IF (LS) THEN
         RV2(LST(I)) = DV1(I) + RV1(I)
         LV1(LST(I)) = LS .AND. REAL (RV2(I), KIND = 8) .GT. DV1(LST(I))
        ELSE
         RV2(I) = I * 2.
         LV1(I) = .NOT.LV1(I) .AND. DV1(I) .EQ. REAL (RV1(I), KIND = 8)
         LV1(LST(I)) = .NOT.LV1(I) .AND. DV1(I) .EQ. REAL (RV1(I), KIND
     X      = 8)
         DV1(I) = 9 + RV2(I) * 4
         S = DV1(I) * RV1(I)
         RV2(LST(I)) = RV2(I) + S
        END IF
        DV2(I) = S
       END DO
       RETURN 
      END

      SUBROUTINE SUB2

       REAL*4 S
       REAL*8 DV1(10), DV2(10)
       REAL*4 RV1(10), RV2(10)
       LOGICAL*4 LV1(10), LS
       INTEGER*4 LST(10)

       COMMON // DV1, DV2, RV1, RV2, LV1, LST

                                                       
       DO I=1,10
        S = 0.
        LS = DV1(I) .GE. REAL (RV1(I), KIND = 8)
                                                                        
        IF (LS) THEN
         RV2(LST(I)) = DV1(I) + RV1(I)
         LV1(LST(I)) = LS .AND. REAL (RV2(LST(I)), KIND = 8) .GT. DV1(I)
        ELSE
         RV2(I) = I * 2.
         LV1(LST(I)) = .NOT.LV1(I) .AND. DV1(I) .EQ. REAL (RV1(I), KIND
     X      = 8)
         DV1(I) = 9 + RV2(I) * 4
         S = DV1(I) * RV1(I)
         RV2(LST(I)) = RV2(I) + S
        END IF
        DV2(I) = S
       END DO
       RETURN 
      END

      SUBROUTINE SUB3

       REAL*4 S
       REAL*8 DV1(10), DV2(10)
       REAL*4 RV1(10), RV2(10)
       LOGICAL*4 LV1(10), LS
       INTEGER*4 LST(10)

       COMMON // DV1, DV2, RV1, RV2, LV1, LST

                                                       
       DO I=1,10
        S = 0.
        LS = DV1(I) .GE. REAL (RV1(I), KIND = 8)
                                                                        
        IF (LS) THEN
         RV2(LST(I)) = DV1(I) + RV1(I)
         LV1(LST(I)) = LS .AND. REAL (RV2(LST(I)), KIND = 8) .GT. DV1(I)
        ELSE
         RV2(I) = I * 2.
         LV1(LST(I)) = .NOT.LV1(I) .AND. DV1(I) .EQ. REAL (RV1(I), KIND
     X      = 8)
         DV1(I) = 9 + RV2(I) * 4
         S = DV1(I) * RV1(I)
         RV2(LST(I)) = RV2(I) + S
        END IF
        DV2(I) = S
       END DO
       RETURN 
      END

      SUBROUTINE SUB4

       REAL*4 S
       REAL*8 DV1(10), DV2(10)
       REAL*4 RV1(10), RV2(10)
       LOGICAL*4 LV1(10), LS
       INTEGER*4 LST(10)

       COMMON // DV1, DV2, RV1, RV2, LV1, LST

                                                       
       DO I=1,10
        S = 0.
        LS = DV1(I) .GE. REAL (RV1(I), KIND = 8)
                                                                        
        IF (LS) THEN
         RV2(LST(I)) = DV1(I) + RV1(I)
         LV1(LST(I)) = LS .AND. REAL (RV2(LST(I)), KIND = 8) .GT. DV1(I)
        ELSE
         RV2(I) = I * 2.
         LV1(LST(I)) = .NOT.LV1(I) .AND. DV1(I) .EQ. REAL (RV1(I), KIND
     X      = 8)
         DV1(I) = 9 + RV2(I) * 4
         S = DV1(I) * RV1(I)
         RV2(LST(I)) = RV2(I) + S
        END IF
        DV2(I) = S
       END DO
       RETURN 
      END
