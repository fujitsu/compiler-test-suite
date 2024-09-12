      PROGRAM MAIN

       LOGICAL*4 L20(10)
       DATA L20/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       LOGICAL*4 L21(10)
       DATA L21/3*.FALSE.,.TRUE.,.FALSE.,.TRUE.,3*.FALSE.,.TRUE./ 
       INTEGER*4 I20(10)
       DATA I20/1,2,3,4,5,6,7,8,9,10/ 
       REAL*4 R20(10)
       DATA R20/2*1,2*2,2*3,2*4,2*5/ 
       REAL*8 D20(10)
       DATA D20/5*1.0,5*2.0/ 
       INTEGER*4 I21(10)
       DATA I21/1,0,1,0,1,0,1,0,1,0/ 
       INTEGER*4 IS, IS1
       INTEGER*4 IV3, IV4
       REAL*4 RV1
       REAL*8 DV1
       DOUBLEPRECISION DV2
       REAL X, Y
       INTEGER IV2, L, N
       PARAMETER (DV2 = 1D0, X = 6., Y = 0.1, IV2 = 0.1, L = 6)
       PARAMETER (N = 10)
       IS1 = 0
       IS = 0
       IV4 = 0
       IV3 = 0
       RV1 = 0.

       WRITE (6, *) '----- LOOP 1 -----'
       DO I=1,10
        IF (L20(I)) THEN
         IF (L21(I)) THEN
          IS = IS + I20(I)
         END IF
        ELSE
         IF (L21(6)) THEN
          IS1 = IS1 + I20(I)
         END IF
        END IF
        IF (L20(I)) THEN
         RV1 = RV1 + R20(I)
        END IF
        IF (L21(I)) THEN
        ELSE
         IF (D20(6) .GT. 1D0) THEN
          IF (L20(I)) THEN
           IV3 = IV3 + MAX (MIN (I20(I), I), MAX (0, I21(I)))
          END IF
          IF (6. .EQ. Y) THEN
           IV4 = IV4 + 6
          END IF
         END IF
        END IF
       END DO
       WRITE (6, *) IS
       WRITE (6, *) IS1
       WRITE (6, *) RV1
       WRITE (6, *) 0D0
       WRITE (6, *) IV3
       WRITE (6, *) IV4
       STOP 
      END
