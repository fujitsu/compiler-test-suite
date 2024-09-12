      PROGRAM MAIN

       INTEGER IS10, K
       REAL*4 EV10(10), EV11(10)
       DATA EV10/1,0,7*1.5,-1.5/ 
       DATA EV11/10*100/ 

       REAL*8 DV10(10)
       DATA DV10/1,2,3,4,5,6,7,8,9,10/ 

       REAL*4 EV30(100), EV31(100)
       INTEGER IV30(100)
       INTEGER N, IS20
       DOUBLEPRECISION DS30
       PARAMETER (N = 100, DS30 = 3.5, IS20 = 16)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 16)
       INTEGER I2, I1
       DOUBLE PRECISION DD6, DD5, DD4, DD3, DD2
       K = 1
       DATA EV30/19*1.5,1.75,30*1.5,1.75,49*2/ 
       DATA IV30/100*2/ 
       DATA EV31/100*0/ 

       DO I2=1,10
        IS10 = EV10(I2)
        IF (EV10(I2) .LT. 0) GO TO 19
        EV11(K) = K + IS10
        K = K + 1
       END DO
   19  CONTINUE

       WRITE (6, *) K, EV10, EV11

       DO I2=1,6,5
        DD2 = DV10(I2) * DD1
        DD3 = DV10(I2+1) * DD1
        DD4 = DV10(I2+2) * DD1
        DD5 = DV10(I2+3) * DD1
        DD6 = DV10(I2+4) * DD1
        DV10(I2+4) = DD6
        DV10(I2+3) = DD5
        DV10(I2+2) = DD4
        DV10(I2+1) = DD3
        DV10(I2) = DD2
       END DO

       WRITE (6, *) 11, DV10

       DO I2=1,97,4
        I1 = I2
        I = I2
        IV30(I2) = I2 * (-2) + 100
        IF (IV30(I2) * EV30(I2) - DS30) 32, 37, 30
   32   EV31(I2) = IV30(I2) / DS30
   30   CONTINUE
        I1 = I2 + 1
        I = I2 + 1
        IV30(I2+1) = I2 * (-2) + 98
        IF (IV30(I2+1) * EV30(I2+1) - DS30) 1, 37, 2
    1   EV31(I2+1) = IV30(I2+1) / DS30
    2   CONTINUE
        I1 = I2 + 2
        I = I2 + 2
        IV30(I2+2) = I2 * (-2) + 96
        IF (IV30(I2+2) * EV30(I2+2) - DS30) 3, 37, 4
    3   EV31(I2+2) = IV30(I2+2) / DS30
    4   CONTINUE
        I1 = I2 + 3
        I = I2 + 3
        IV30(I2+3) = I2 * (-2) + 94
        IF (IV30(I2+3) * EV30(I2+3) - DS30) 5, 37, 6
    5   EV31(I2+3) = IV30(I2+3) / DS30
    6   CONTINUE
       END DO
       I = 101
       GO TO 39

   37  CONTINUE
       IV30(I1) = IV30(I1) * 2

   39  CONTINUE
       WRITE (6, *) I, IV30, EV30, EV31

       STOP 
      END
