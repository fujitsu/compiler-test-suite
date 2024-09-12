      PROGRAM MAIN



       INTEGER ITR1(2), IS10
       REAL*4 EV10(100), EV11(100)
       DATA EV10/5*0.0,6*2.,-2,30*1.5,-.5,49*-2.5,14.2,6*0,.5/ 
       DATA ITR1/100,0/ 
       DATA EV11/100*0/ 



       REAL*4 EV20(100,2)
       REAL*8 DV20(100)
       DATA DV20/90*10,.5,9*10/ 
       DATA EV20/200*200/ 



       REAL*4 EV30(2000)
       INTEGER ITR3
       PARAMETER (ITR3 = 2048)
       REAL RR1, RR2
       PARAMETER (RR1 = 1. / 2., RR2 = 1. / 2048)
       DATA EV30/31*2048,1000,1968*2048/ 
       INTEGER II1, I1

       II1 = ITR1(1)
       DO I1=1,II1
        IF (EV10(I1) .GT. 1.) THEN
         IS10 = EV10(I1) * 2.5
        ELSE
         IS10 = 1
        END IF
        IF (EV10(I1) * EV10(I1) .GT. FLOAT (IS10)) THEN
         GO TO 19
        END IF
        EV11(I1) = IS10 * RR1
       END DO

   19  WRITE (6, *) EV11

       DO J=1,2
        L = 1

        DO I1=100,4,-4
         I = I1
         IS20 = LOG (DV20(I1))
         IF (IS20) 29, 21, 22
   21    EV20(L,J) = IS20 * L
         GO TO 20
   22    EV20(L,J) = DV20(I1) - L
   20    L = L + 1
         I = I1 - 1
         IS20 = LOG (DV20(I1-1))
         IF (IS20) 29, 1, 2
    1    EV20(L,J) = IS20 * L
         GO TO 3
    2    EV20(L,J) = DV20(I1-1) - L
    3    L = L + 1
         I = I1 - 2
         IS20 = LOG (DV20(I1-2))
         IF (IS20) 29, 4, 5
    4    EV20(L,J) = IS20 * L
         GO TO 6
    5    EV20(L,J) = DV20(I1-2) - L
    6    L = L + 1
         I = I1 - 3
         IS20 = LOG (DV20(I1-3))
         IF (IS20) 29, 7, 8
    7    EV20(L,J) = IS20 * L
         GO TO 9
    8    EV20(L,J) = DV20(I1-3) - L
    9    L = L + 1
        END DO
        I = 0
       END DO
   29  CONTINUE
       WRITE (6, *) I, L
       WRITE (6, *) EV20

       DO I1=1,2048
        I = I1
        IF (EV30(I1) * RR2 .GE. 1. .AND. EV30(I1) .GE. 2048.) GO TO 30
        GO TO 38
   30   CONTINUE
       END DO
       I = 2049
   38  WRITE (6, *) I

       STOP 
      END
