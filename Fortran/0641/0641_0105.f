      PROGRAM MAIN

       REAL*4 EV10(10), ES10
       DATA EV10/0,0,8*1.5/ 

       REAL*8 DV10(1000)
       DATA DV10/0,999*200/ 

       REAL*4 EV30(100), EV31(100)
       INTEGER IV30(100), IS30
       INTEGER N3, N
       DOUBLEPRECISION DS30
       PARAMETER (N3 = 100, DS30 = 3.5, N = 10)
       INTEGER I2, I1
       LOGICAL LL1
       ES10 = 0.
       IS30 = 1
       DATA EV30/50*1.5,49*2,1.75/ 
       DATA EV31/100*100/ 
       DATA IV30/100*2/ 

  100  CONTINUE
       LL1 = ES10 .EQ. 0
       DO I2=1,10
        IF (LL1) GO TO 19
        EV10(I2) = I2 * ES10
       END DO
   19  CONTINUE

       WRITE (6, *) EV10, ES10

       IF (ES10 .EQ. 0) THEN
        ES10 = -1.
        GO TO 100
       END IF

  200  DO I2=1,10
        I = I2
        IS20 = I2 * DV10(I2)
        DV10(I2) = IS20 * 2
        IF (DV10(I2) .EQ. 0D0) GO TO 29
       END DO
       I = 11
   29  CONTINUE

       WRITE (6, *) I, (DV10(K), K=1,11)
       IF (I .EQ. 1) THEN
        DV10(1) = -1D0
        GO TO 200
       END IF

       DO I2=1,97,4
        I1 = I2
        IF (IV30(I2) * EV30(I2) - DS30) 32, 37, 30
   32   EV31(IS30) = IV30(I2) * EV30(I2)
   30   IS30 = IS30 + 1
        I1 = I2 + 1
        IF (IV30(I2+1) * EV30(I2+1) - DS30) 1, 37, 2
    1   EV31(IS30) = IV30(I2+1) * EV30(I2+1)
    2   IS30 = IS30 + 1
        I1 = I2 + 2
        IF (IV30(I2+2) * EV30(I2+2) - DS30) 3, 37, 4
    3   EV31(IS30) = IV30(I2+2) * EV30(I2+2)
    4   IS30 = IS30 + 1
        I1 = I2 + 3
        IF (IV30(I2+3) * EV30(I2+3) - DS30) 5, 37, 6
    5   EV31(IS30) = IV30(I2+3) * EV30(I2+3)
    6   IS30 = IS30 + 1
       END DO
       GO TO 39
   37  CONTINUE
       IV30(I1) = IV30(I1) * 2

   39  CONTINUE
       WRITE (6, *) IS30, IV30, EV30, EV31

       STOP 
      END
