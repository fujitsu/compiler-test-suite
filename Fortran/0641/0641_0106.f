      PROGRAM MAIN

       REAL*4 EV10(10), ES10
       DATA EV10/10*1./ 

       REAL*8 DV20(10), DV21(10), DV22(10)
       DATA DV20/10*10/ 
       DATA DV21/10*4/ 
       DATA DV22/8*4,3,2/ 

       REAL*4 EV30(10)
       INTEGER IV30(10)
       LOGICAL LV30(10)
       DOUBLEPRECISION DS30
       PARAMETER (DS30 = 3.5)
       INTEGER II2, II1, I2, I1
       ES10 = -5.
       DATA EV30/5*1.5,5*2/ 
       DATA IV30/10*2/ 
       DATA LV30/6*.FALSE.,4*.TRUE./ 

       DO J=1,10
        II2 = J / 4
        II1 = II2 * 4 + 1
        DO I2=1,J-3,4
         ES10 = ES10 + EV10(11-I2) + EV10(I2)
         ES10 = ES10 + EV10(10-I2) + EV10(I2+1)
         ES10 = ES10 + EV10(9-I2) + EV10(I2+2)
         ES10 = ES10 + EV10(8-I2) + EV10(I2+3)
        END DO
        DO I2=II1,J,1
         ES10 = ES10 + EV10(11-I2) + EV10(I2)
        END DO
        IF (ES10 .GT. 20.) GO TO 19
       END DO
       WRITE (6, *) '  NORMAL EXIT '
   19  CONTINUE

       WRITE (6, *) ES10, EV10

       DO I2=1,10
        I = I2
        DS20 = DV21(I2) * DV22(I2)
        DS20 = DS20 - 1.
        IF (DV20(I2) .GE. REAL (DS20, KIND = 8)) GO TO 29
       END DO
       I = 11
   29  CONTINUE

       WRITE (6, *) I, DV20

       DO I2=1,10
        I1 = I2
        I = I2
        IF (IV30(I2) * EV30(I2) - DS30) 30, 37, 38
   30   IF (LV30(I2)) GO TO 39
       END DO
       I = 11
       GO TO 39
   37  CONTINUE
       IV30(I1) = IV30(I1) * 2
       GO TO 39

   38  EV30(I1) = EV30(I1) * 3

   39  CONTINUE
       WRITE (6, *) I, IV30, EV30

       STOP 
      END
