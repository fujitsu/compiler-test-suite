      PROGRAM MAIN

       REAL*4 EV10(10)
       DATA EV10/-10,-2.,0,7*1.5/ 

       REAL*8 DV20(100), DS20
       REAL*4 EV20(100)
       DATA DV20/100*2/ 
       DATA EV20/100*2/ 

       REAL*8 DV30(10)
       REAL*4 EV30(10)
       LOGICAL LV30(10)
       REAL ES10
       PARAMETER (ES10 = 3.5)
       DATA EV30/1,3,1,3,1,3,1,3,1,3/ 
       DATA DV30/10*2/ 
       DATA LV30/7*.FALSE.,3*.TRUE./ 
       INTEGER I1

       DO I1=1,10
        IF (EV10(I1) .GE. 0) THEN
         IF (ES10 .EQ. 0) GO TO 19
         EV10(I1) = ES10 * EV10(I1)
        END IF
       END DO
   19  CONTINUE

       WRITE (6, *) EV10, ES10

       DO I1=2,96,4
        I = I1
        DS20 = DV20(I1) * DV20(I1+1)
        IF (DS20) 20, 29, 21
   21   EV20(I1) = SQRT (DS20)
        DV20(I1) = EV20(I1) - 3.5
   20   CONTINUE
        I = I1 + 1
        DS20 = DV20(I1+1) * DV20(I1+2)
        IF (DS20) 4, 29, 3
    3   EV20(I1+1) = SQRT (DS20)
        DV20(I1+1) = EV20(I1+1) - 3.5
    4   CONTINUE
        I = I1 + 2
        DS20 = DV20(I1+2) * DV20(I1+3)
        IF (DS20) 6, 29, 5
    5   EV20(I1+2) = SQRT (DS20)
        DV20(I1+2) = EV20(I1+2) - 3.5
    6   CONTINUE
        I = I1 + 3
        DS20 = DV20(I1+3) * DV20(I1+4)
        IF (DS20) 8, 29, 7
    7   EV20(I1+3) = SQRT (DS20)
        DV20(I1+3) = EV20(I1+3) - 3.5
    8   CONTINUE
       END DO
       DO I1=98,99,1
        I = I1
        DS20 = DV20(I1) * DV20(I1+1)
        IF (DS20) 2, 29, 1
    1   EV20(I1) = SQRT (DS20)
        DV20(I1) = EV20(I1) - 3.5
    2   CONTINUE
       END DO
       I = 100
       WRITE (6, *) '  LOOP IS NORMALY FINISHED '
   29  CONTINUE

       WRITE (6, *) I, DV20, EV20

       K = 1
       DO I1=1,10
        IF (LV30(I1)) GO TO 39
        LV30(I1) = DV30(K) .GT. REAL (EV30(K), KIND = 8)
        K = K + 1
       END DO
       WRITE (6, *) '  NORMALLY FINISHED '

   39  CONTINUE
       WRITE (6, *) K, DV30, EV30

       STOP 
      END
