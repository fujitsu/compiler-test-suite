      PROGRAM MAIN

       REAL*4 EV10(10)
       INTEGER IS10
       DATA EV10/0,0,8*1.5/ 

       REAL*8 DV10(10)
       REAL*8 QV10(10)
       DATA DV10/0,9*200/ 
       DATA QV10/-9,-8,-7,-6,-5,-4,-3,-2,-1,0/ 

       REAL*4 EV30(10)
       INTEGER IV30(10), IV31(10)
       DOUBLEPRECISION DS30
       PARAMETER (DS30 = 3.5)
       INTEGER I2, I1
       IS10 = 0
       DATA EV30/5*1.5,5*2/ 
       DATA IV30/10*2/ 
       DATA IV31/10*2/ 

       DO I2=1,10
        IS10 = IS10 + 2
        IF (EV10(I2) .LT. 0) GO TO 19
       END DO
   19  CONTINUE

       WRITE (6, *) EV10, IS10

       DO I2=1,10
        I = I2
        IF (QV10(I2) .GE. 0D0) GO TO 29
        DV10(I2) = I2 * 3
       END DO
       I = 11
   29  CONTINUE

       WRITE (6, *) I, DV10, QV10

       DO I2=1,10
        I1 = I2
        I = I2
        IF (REAL (IV30(I2) * EV30(I2), KIND = 8) .LT. DS30) THEN
         IV31(I2) = IV30(I2) / I2
        ELSE
         GO TO 37
        END IF
       END DO
       I = 11
       GO TO 39
   37  CONTINUE
       IV31(I1) = IV30(I1) * 2

   39  CONTINUE
       WRITE (6, *) I, IV30, IV31, EV30

       STOP 
      END
 
 
 
 
