      PROGRAM MAIN

       IMPLICIT REAL*8 (D), REAL*8 (Q), COMPLEX (C), LOGICAL (L)
       DOUBLEPRECISION DS05, DS04, DS03
       PARAMETER (DS05 = 5D0, DS04 = 4D0, DS03 = 3D0)
       INTEGER I1, J1
       LOGICAL LL2, LL1
       DS02 = 2D0
       IS01 = 1
       IS02 = 2
       IS03 = 3

       DO J1=1,10
        IF (J1 .GT. 5) THEN
         DS02 = 80D0 + DS02
         I = 11
        ELSE
         I = 11
        END IF
       END DO
       DS01 = 71D0

       WRITE (6, *) DS01, DS02, I, 11



       DO J1=1,10
        LL1 = J1 .GT. 2
        LL2 = J1 .NE. 10
        DO I1=1,10
         IF (LL1) THEN
          IF (J1 .GE. 9) THEN
           GO TO 3
          END IF
          IF (J1 .NE. 5) THEN
           IF (I1 .LE. 5) THEN
            GO TO 4
           END IF
           GO TO 5
          END IF
         END IF

         IS01 = IS01 + 1
         GO TO 5

    3    CONTINUE

         IF (LL2) THEN

          IS02 = IS02 + 1
          GO TO 5
         END IF

    4    CONTINUE

         IS03 = IS03 + 1
    5    CONTINUE
        END DO
       END DO
       WRITE (6, *) IS01
       WRITE (6, *) IS02
       WRITE (6, *) IS03
       STOP 
      END
 
 
