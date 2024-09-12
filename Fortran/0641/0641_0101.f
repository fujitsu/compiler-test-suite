      PROGRAM MAIN

       REAL*4 EV10(10), EV11(10)
       DATA EV10/0,0,8*1.5/ 
       DATA EV11/10*100/ 

       REAL*8 DV10(1000)
       DATA DV10/0,999*200/ 

       REAL*4 EV30(10)
       INTEGER IV30(10)
       LOGICAL LV30(10)
       DOUBLEPRECISION DS30
       INTEGER N
       PARAMETER (DS30 = 3.5, N = 10)
       DATA EV30/5*1.5,5*2/ 
       DATA IV30/10*2/ 
       DATA LV30/6*.FALSE.,4*.TRUE./ 
       INTEGER I2, I1

  100  CONTINUE
       DO I2=1,10
        IF (EV10(I2) .GT. 0) GO TO 19
        IF (EV10(I2) .LT. 0) GO TO 19
        EV11(I2) = I2
       END DO
   19  CONTINUE

       WRITE (6, *) EV10, EV11

       IF (EV10(3) .GT. 0) THEN
        EV10(3) = -100.
        GO TO 100
       END IF


  200  DO I2=1,6,5
        I = I2
        IF (DV10(I2)) 20, 28, 29
   20   CONTINUE
        I = I2 + 1
        IF (DV10(I2+1)) 1, 28, 29
    1   CONTINUE
        I = I2 + 2
        IF (DV10(I2+2)) 2, 28, 29
    2   CONTINUE
        I = I2 + 3
        IF (DV10(I2+3)) 3, 28, 29
    3   CONTINUE
        I = I2 + 4
        IF (DV10(I2+4)) 4, 28, 29
    4   CONTINUE
       END DO
       I = 11
   28  CONTINUE
   29  CONTINUE

       WRITE (6, *) I, (DV10(K), K=1,11)
       IF (I .EQ. 1) THEN
        DV10(1) = -1D0
        GO TO 200
       END IF

       DO I2=1,10
        I1 = I2
        I = I2
        IF (IV30(I2) * EV30(I2) - DS30) 32, 37, 38
   32   IF (LV30(I2)) GO TO 39
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
